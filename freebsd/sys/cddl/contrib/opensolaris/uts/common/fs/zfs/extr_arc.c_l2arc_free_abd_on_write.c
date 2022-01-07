
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t l2df_size; int l2df_type; int * l2df_abd; } ;
typedef TYPE_1__ l2arc_data_free_t ;
typedef int arc_buf_contents_t ;
typedef int abd_t ;


 int KM_SLEEP ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int l2arc_free_on_write ;
 int l2arc_free_on_write_mtx ;
 int list_insert_head (int ,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
l2arc_free_abd_on_write(abd_t *abd, size_t size, arc_buf_contents_t type)
{
 l2arc_data_free_t *df = kmem_alloc(sizeof (*df), KM_SLEEP);

 df->l2df_abd = abd;
 df->l2df_size = size;
 df->l2df_type = type;
 mutex_enter(&l2arc_free_on_write_mtx);
 list_insert_head(l2arc_free_on_write, df);
 mutex_exit(&l2arc_free_on_write_mtx);
}
