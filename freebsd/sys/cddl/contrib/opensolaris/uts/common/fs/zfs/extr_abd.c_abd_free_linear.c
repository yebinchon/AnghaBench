
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int abd_buf; } ;
struct TYPE_7__ {TYPE_1__ abd_linear; } ;
struct TYPE_8__ {int abd_flags; scalar_t__ abd_size; int abd_children; TYPE_2__ abd_u; } ;
typedef TYPE_3__ abd_t ;


 int ABDSTAT_BUMPDOWN (int ) ;
 int ABDSTAT_INCR (int ,int) ;
 int ABD_FLAG_META ;
 int abd_free_struct (TYPE_3__*) ;
 int abdstat_linear_cnt ;
 int abdstat_linear_data_size ;
 int zfs_refcount_destroy (int *) ;
 int zio_buf_free (int ,scalar_t__) ;
 int zio_data_buf_free (int ,scalar_t__) ;

__attribute__((used)) static void
abd_free_linear(abd_t *abd)
{
 if (abd->abd_flags & ABD_FLAG_META) {
  zio_buf_free(abd->abd_u.abd_linear.abd_buf, abd->abd_size);
 } else {
  zio_data_buf_free(abd->abd_u.abd_linear.abd_buf, abd->abd_size);
 }

 zfs_refcount_destroy(&abd->abd_children);
 ABDSTAT_BUMPDOWN(abdstat_linear_cnt);
 ABDSTAT_INCR(abdstat_linear_data_size, -(int)abd->abd_size);

 abd_free_struct(abd);
}
