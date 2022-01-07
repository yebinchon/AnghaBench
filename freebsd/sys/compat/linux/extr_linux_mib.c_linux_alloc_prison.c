
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {int pr_mtx; } ;
struct linux_prison {int dummy; } ;


 int M_PRISON ;
 int M_WAITOK ;
 int bcopy (struct linux_prison*,struct linux_prison*,int) ;
 int free (struct linux_prison*,int ) ;
 struct linux_prison* linux_find_prison (struct prison*,struct prison**) ;
 int linux_osd_jail_slot ;
 struct linux_prison* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int osd_free_reserved (void**) ;
 int osd_jail_set_reserved (struct prison*,int ,void**,struct linux_prison*) ;
 void** osd_reserve (int ) ;

__attribute__((used)) static void
linux_alloc_prison(struct prison *pr, struct linux_prison **lprp)
{
 struct prison *ppr;
 struct linux_prison *lpr, *nlpr;
 void **rsv;


 lpr = linux_find_prison(pr, &ppr);
 if (ppr == pr)
  goto done;




 mtx_unlock(&ppr->pr_mtx);
 nlpr = malloc(sizeof(struct linux_prison), M_PRISON, M_WAITOK);
 rsv = osd_reserve(linux_osd_jail_slot);
 lpr = linux_find_prison(pr, &ppr);
 if (ppr == pr) {
  free(nlpr, M_PRISON);
  osd_free_reserved(rsv);
  goto done;
 }

 mtx_lock(&pr->pr_mtx);
 (void)osd_jail_set_reserved(pr, linux_osd_jail_slot, rsv, nlpr);
 bcopy(lpr, nlpr, sizeof(*lpr));
 lpr = nlpr;
 mtx_unlock(&ppr->pr_mtx);
 done:
 if (lprp != ((void*)0))
  *lprp = lpr;
 else
  mtx_unlock(&pr->pr_mtx);
}
