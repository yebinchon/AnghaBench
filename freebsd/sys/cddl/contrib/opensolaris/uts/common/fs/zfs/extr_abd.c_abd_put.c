
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int abd_flags; int abd_children; int abd_size; TYPE_1__* abd_parent; } ;
typedef TYPE_2__ abd_t ;
struct TYPE_7__ {int abd_children; } ;


 int ABD_FLAG_OWNER ;
 int ASSERT (int) ;
 int abd_free_struct (TYPE_2__*) ;
 int abd_verify (TYPE_2__*) ;
 int zfs_refcount_destroy (int *) ;
 int zfs_refcount_remove_many (int *,int ,TYPE_2__*) ;

void
abd_put(abd_t *abd)
{
 abd_verify(abd);
 ASSERT(!(abd->abd_flags & ABD_FLAG_OWNER));

 if (abd->abd_parent != ((void*)0)) {
  (void) zfs_refcount_remove_many(&abd->abd_parent->abd_children,
      abd->abd_size, abd);
 }

 zfs_refcount_destroy(&abd->abd_children);
 abd_free_struct(abd);
}
