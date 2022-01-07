
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct thread {TYPE_1__* td_ucred; struct proc* td_proc; } ;
struct proc {int p_pid; } ;
struct cloudabi_sys_proc_raise_args {size_t sig; } ;
struct TYPE_6__ {int ksi_signo; int ksi_uid; int ksi_pid; int ksi_code; } ;
typedef TYPE_2__ ksiginfo_t ;
struct TYPE_5__ {int cr_ruid; } ;
 int EINVAL ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int SI_USER ;
 int ksiginfo_init (TYPE_2__*) ;
 size_t nitems (int const*) ;
 int pksignal (struct proc*,int,TYPE_2__*) ;

int
cloudabi_sys_proc_raise(struct thread *td,
    struct cloudabi_sys_proc_raise_args *uap)
{
 static const int signals[] = {
  [179] = 153,
  [178] = 152,
  [177] = 151,
  [176] = 150,
  [175] = 149,
  [174] = 148,
  [173] = 147,
  [172] = 146,
  [171] = 145,
  [170] = 144,
  [169] = 143,
  [168] = 142,
  [167] = 141,
  [166] = 140,
  [165] = 139,
  [164] = 138,
  [163] = 137,
  [162] = 136,
  [161] = 135,
  [160] = 134,
  [159] = 133,
  [158] = 132,
  [157] = 131,
  [156] = 130,
  [155] = 129,
  [154] = 128,
 };
 ksiginfo_t ksi;
 struct proc *p;

 if (uap->sig >= nitems(signals) || signals[uap->sig] == 0) {

  return (uap->sig == 0 ? 0 : EINVAL);
 }

 p = td->td_proc;
 ksiginfo_init(&ksi);
 ksi.ksi_signo = signals[uap->sig];
 ksi.ksi_code = SI_USER;
 ksi.ksi_pid = p->p_pid;
 ksi.ksi_uid = td->td_ucred->cr_ruid;
 PROC_LOCK(p);
 pksignal(p, ksi.ksi_signo, &ksi);
 PROC_UNLOCK(p);
 return (0);
}
