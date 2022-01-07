
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {int pr_mtx; struct prison* pr_parent; } ;
struct linux_prison {int dummy; } ;


 int linux_osd_jail_slot ;
 struct linux_prison lprison0 ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct linux_prison* osd_jail_get (struct prison*,int ) ;
 struct prison prison0 ;

__attribute__((used)) static struct linux_prison *
linux_find_prison(struct prison *spr, struct prison **prp)
{
 struct prison *pr;
 struct linux_prison *lpr;

 for (pr = spr;; pr = pr->pr_parent) {
  mtx_lock(&pr->pr_mtx);
  lpr = (pr == &prison0)
      ? &lprison0
      : osd_jail_get(pr, linux_osd_jail_slot);
  if (lpr != ((void*)0))
   break;
  mtx_unlock(&pr->pr_mtx);
 }
 *prp = pr;

 return (lpr);
}
