
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int * buf; } ;
struct mlx5_db_page {scalar_t__ use_cnt; scalar_t__ num_db; unsigned long* free; TYPE_1__ buf; struct mlx5_db_page* next; } ;
struct mlx5_context {int cache_line_size; int db_list_mutex; struct mlx5_db_page* db_list; } ;


 struct mlx5_db_page* __add_page (struct mlx5_context*) ;
 int ffsl (unsigned long) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

uint32_t *mlx5_alloc_dbrec(struct mlx5_context *context)
{
 struct mlx5_db_page *page;
 uint32_t *db = ((void*)0);
 int i, j;

 pthread_mutex_lock(&context->db_list_mutex);

 for (page = context->db_list; page; page = page->next)
  if (page->use_cnt < page->num_db)
   goto found;

 page = __add_page(context);
 if (!page)
  goto out;

found:
 ++page->use_cnt;

 for (i = 0; !page->free[i]; ++i)
               ;

 j = ffsl(page->free[i]);
 --j;
 page->free[i] &= ~(1UL << j);
 db = page->buf.buf + (i * 8 * sizeof(long) + j) * context->cache_line_size;

out:
 pthread_mutex_unlock(&context->db_list_mutex);

 return db;
}
