
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receive_objnode {int dummy; } ;
struct objlist {int list; } ;


 int kmem_free (struct receive_objnode*,int) ;
 int list_destroy (int *) ;
 struct receive_objnode* list_remove_head (int *) ;

__attribute__((used)) static void
objlist_destroy(struct objlist *list)
{
 for (struct receive_objnode *n = list_remove_head(&list->list);
     n != ((void*)0); n = list_remove_head(&list->list)) {
  kmem_free(n, sizeof (*n));
 }
 list_destroy(&list->list);
}
