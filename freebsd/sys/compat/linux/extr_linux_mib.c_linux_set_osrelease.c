
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_ucred; } ;
struct prison {int pr_mtx; } ;
struct linux_prison {int pr_osrelease; int pr_osrel; } ;
struct TYPE_2__ {int cr_prison; } ;


 int LINUX_MAX_UTSNAME ;
 struct linux_prison* linux_find_prison (int ,struct prison**) ;
 int linux_map_osrel (char*,int *) ;
 int mtx_unlock (int *) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int
linux_set_osrelease(struct thread *td, char *osrelease)
{
 struct prison *pr;
 struct linux_prison *lpr;
 int error;

 lpr = linux_find_prison(td->td_ucred->cr_prison, &pr);
 error = linux_map_osrel(osrelease, &lpr->pr_osrel);
 if (error == 0)
  strlcpy(lpr->pr_osrelease, osrelease, LINUX_MAX_UTSNAME);
 mtx_unlock(&pr->pr_mtx);

 return (error);
}
