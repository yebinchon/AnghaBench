
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

int
linux_get_oss_version(struct thread *td)
{
 struct prison *pr;
 struct linux_prison *lpr;
 int version;

 lpr = linux_find_prison(td->td_ucred->cr_prison, &pr);
 version = lpr->pr_oss_version;
 mtx_unlock(&pr->pr_mtx);

 return (version);
}
