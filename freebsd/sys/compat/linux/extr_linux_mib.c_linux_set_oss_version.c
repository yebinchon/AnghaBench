
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_ucred; } ;
struct prison {int pr_mtx; } ;
struct linux_prison {int pr_oss_version; } ;
struct TYPE_2__ {int cr_prison; } ;


 struct linux_prison* linux_find_prison (int ,struct prison**) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
linux_set_oss_version(struct thread *td, int oss_version)
{
 struct prison *pr;
 struct linux_prison *lpr;

 lpr = linux_find_prison(td->td_ucred->cr_prison, &pr);
 lpr->pr_oss_version = oss_version;
 mtx_unlock(&pr->pr_mtx);

 return (0);
}
