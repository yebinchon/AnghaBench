
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uargs ;
struct syscall_args {int code; TYPE_1__* callp; int args; } ;
typedef enum systrace_probe_t { ____Placeholder_systrace_probe_t } systrace_probe_t ;
typedef int dtrace_id_t ;
struct TYPE_4__ {int* t_dtrace_systrace_args; } ;
struct TYPE_3__ {int sy_return; int (* sy_systrace_args_func ) (int,int ,int*,int*) ;int sy_entry; } ;


 int DTRACE_IDNONE ;
 int SYSTRACE_ENTRY ;
 TYPE_2__* curthread ;
 int dtrace_probe (int ,int,int,int,int,int) ;
 int memset (int*,int ,int) ;
 int nitems (int ) ;
 int stub1 (int,int ,int*,int*) ;
 int systrace_args (int,int ,int*,int*) ;

__attribute__((used)) static void
systrace_probe(struct syscall_args *sa, enum systrace_probe_t type, int retval)
{
 uint64_t uargs[nitems(sa->args)];
 dtrace_id_t id;
 int n_args, sysnum;

 sysnum = sa->code;
 memset(uargs, 0, sizeof(uargs));

 if (type == SYSTRACE_ENTRY) {
  if ((id = sa->callp->sy_entry) == DTRACE_IDNONE)
   return;

  if (sa->callp->sy_systrace_args_func != ((void*)0))




   (*sa->callp->sy_systrace_args_func)(sysnum, sa->args,
       uargs, &n_args);
  else





   systrace_args(sysnum, sa->args, uargs, &n_args);




  curthread->t_dtrace_systrace_args = uargs;
 } else {
  if ((id = sa->callp->sy_return) == DTRACE_IDNONE)
   return;

  curthread->t_dtrace_systrace_args = ((void*)0);

  uargs[0] = uargs[1] = retval;
 }


 dtrace_probe(id, uargs[0], uargs[1], uargs[2], uargs[3], uargs[4]);
}
