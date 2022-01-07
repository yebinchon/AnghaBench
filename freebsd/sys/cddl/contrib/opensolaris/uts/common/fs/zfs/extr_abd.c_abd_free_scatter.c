
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * abd_chunks; } ;
struct TYPE_8__ {TYPE_1__ abd_scatter; } ;
struct TYPE_9__ {size_t abd_size; int abd_children; TYPE_2__ abd_u; } ;
typedef TYPE_3__ abd_t ;


 int ABDSTAT_BUMPDOWN (int ) ;
 int ABDSTAT_INCR (int ,size_t) ;
 int abd_free_chunk (int ) ;
 int abd_free_struct (TYPE_3__*) ;
 size_t abd_scatter_chunkcnt (TYPE_3__*) ;
 int abdstat_scatter_chunk_waste ;
 int abdstat_scatter_cnt ;
 int abdstat_scatter_data_size ;
 size_t zfs_abd_chunk_size ;
 int zfs_refcount_destroy (int *) ;

__attribute__((used)) static void
abd_free_scatter(abd_t *abd)
{
 size_t n = abd_scatter_chunkcnt(abd);
 for (int i = 0; i < n; i++) {
  abd_free_chunk(abd->abd_u.abd_scatter.abd_chunks[i]);
 }

 zfs_refcount_destroy(&abd->abd_children);
 ABDSTAT_BUMPDOWN(abdstat_scatter_cnt);
 ABDSTAT_INCR(abdstat_scatter_data_size, -(int)abd->abd_size);
 ABDSTAT_INCR(abdstat_scatter_chunk_waste,
     abd->abd_size - n * zfs_abd_chunk_size);

 abd_free_struct(abd);
}
