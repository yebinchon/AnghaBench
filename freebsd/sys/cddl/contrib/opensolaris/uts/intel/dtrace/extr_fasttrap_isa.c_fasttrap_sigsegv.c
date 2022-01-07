
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
 int SEGV_MAPERR ;
 int SIGSEGV ;
 int ksiginfo_init (TYPE_1__*) ;
 int tdksignal (int *,int ,TYPE_1__*) ;

__attribute__((used)) static void
fasttrap_sigsegv(proc_t *p, kthread_t *t, uintptr_t addr)
{
 ksiginfo_t ksi;

 ksiginfo_init(&ksi);
 ksi.ksi_signo = SIGSEGV;
 ksi.ksi_code = SEGV_MAPERR;
 ksi.ksi_addr = (caddr_t)addr;
 PROC_LOCK(p);
 (void)tdksignal(t, SIGSEGV, &ksi);
 PROC_UNLOCK(p);
}
