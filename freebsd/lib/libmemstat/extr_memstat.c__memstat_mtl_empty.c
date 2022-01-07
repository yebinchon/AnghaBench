
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_type_list {int mtl_list; } ;
struct memory_type {struct memory_type* mt_percpu_cache; struct memory_type* mt_percpu_alloc; } ;


 struct memory_type* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct memory_type*,int ) ;
 int free (struct memory_type*) ;
 int mt_list ;

void
_memstat_mtl_empty(struct memory_type_list *list)
{
 struct memory_type *mtp;

 while ((mtp = LIST_FIRST(&list->mtl_list))) {
  free(mtp->mt_percpu_alloc);
  free(mtp->mt_percpu_cache);
  LIST_REMOVE(mtp, mt_list);
  free(mtp);
 }
}
