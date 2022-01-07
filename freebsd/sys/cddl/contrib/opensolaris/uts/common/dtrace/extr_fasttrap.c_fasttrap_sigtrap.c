
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int proc_t ;
typedef int kthread_t ;
struct TYPE_4__ {scalar_t__ ksi_addr; int ksi_code; int ksi_signo; } ;
typedef TYPE_1__ ksiginfo_t ;
typedef scalar_t__ caddr_t ;


 int PROC_LOCK (int *) ;
 int PROC_UNLOCK (int *) ;
 int SIGTRAP ;
 int TRAP_DTRACE ;
 int ksiginfo_init (TYPE_1__*) ;
 int tdsendsignal (int *,int *,int ,TYPE_1__*) ;

void
fasttrap_sigtrap(proc_t *p, kthread_t *t, uintptr_t pc)
{
 ksiginfo_t ksi;

 ksiginfo_init(&ksi);
 ksi.ksi_signo = SIGTRAP;
 ksi.ksi_code = TRAP_DTRACE;
 ksi.ksi_addr = (caddr_t)pc;
 PROC_LOCK(p);
 (void)tdsendsignal(p, t, SIGTRAP, &ksi);
 PROC_UNLOCK(p);
}
