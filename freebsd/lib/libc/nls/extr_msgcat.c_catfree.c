
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct catentry {struct catentry* lang; struct catentry* path; struct catentry* name; struct catentry* catd; scalar_t__ __size; int __data; } ;


 struct catentry* NLERR ;
 int SLIST_REMOVE (int *,struct catentry*,int ,int ) ;
 int cache ;
 int catentry ;
 int free (struct catentry*) ;
 int list ;
 int munmap (int ,size_t) ;

__attribute__((used)) static void
catfree(struct catentry *np)
{

 if (np->catd != ((void*)0) && np->catd != NLERR) {
  munmap(np->catd->__data, (size_t)np->catd->__size);
  free(np->catd);
 }
 SLIST_REMOVE(&cache, np, catentry, list);
 free(np->name);
 free(np->path);
 free(np->lang);
 free(np);
}
