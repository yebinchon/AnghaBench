
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_ucred; } ;
struct prison {int pr_mtx; } ;
struct linux_prison {int pr_osname; } ;
struct TYPE_2__ {int cr_prison; } ;


 int LINUX_MAX_UTSNAME ;
 int bcopy (int ,char*,int ) ;
 struct linux_prison* linux_find_prison (int ,struct prison**) ;
 int mtx_unlock (int *) ;

void
linux_get_osname(struct thread *td, char *dst)
{
 struct prison *pr;
 struct linux_prison *lpr;

 lpr = linux_find_prison(td->td_ucred->cr_prison, &pr);
 bcopy(lpr->pr_osname, dst, LINUX_MAX_UTSNAME);
 mtx_unlock(&pr->pr_mtx);
}
