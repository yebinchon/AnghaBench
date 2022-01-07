
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct kmem_item {int stack; } ;


 int KM_SLEEP ;
 int LIST_INSERT_HEAD (int *,struct kmem_item*,int ) ;
 int M_SOLARIS ;
 int assert (int ) ;
 int kmem_items ;
 int kmem_items_mtx ;
 void* malloc (size_t,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int stack_save (int *) ;

void *
zfs_kmem_alloc(size_t size, int kmflags)
{
 void *p;





 p = malloc(size, M_SOLARIS, kmflags);

 if (kmflags & KM_SLEEP)
  assert(p != ((void*)0));
 return (p);
}
