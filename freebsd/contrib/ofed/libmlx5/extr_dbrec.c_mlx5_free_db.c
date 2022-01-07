
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {void* buf; } ;
struct mlx5_db_page {unsigned long* free; TYPE_4__ buf; TYPE_2__* prev; struct mlx5_db_page* next; int use_cnt; } ;
struct TYPE_5__ {int device; } ;
struct mlx5_context {int cache_line_size; int db_list_mutex; struct mlx5_db_page* db_list; TYPE_1__ ibv_ctx; } ;
struct TYPE_7__ {uintptr_t page_size; } ;
struct TYPE_6__ {struct mlx5_db_page* next; } ;


 int free (struct mlx5_db_page*) ;
 int mlx5_free_buf (TYPE_4__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_3__* to_mdev (int ) ;

void mlx5_free_db(struct mlx5_context *context, uint32_t *db)
{
 struct mlx5_db_page *page;
 uintptr_t ps = to_mdev(context->ibv_ctx.device)->page_size;
 int i;

 pthread_mutex_lock(&context->db_list_mutex);

 for (page = context->db_list; page; page = page->next)
  if (((uintptr_t) db & ~(ps - 1)) == (uintptr_t) page->buf.buf)
   break;

 if (!page)
  goto out;

 i = ((void *) db - page->buf.buf) / context->cache_line_size;
 page->free[i / (8 * sizeof(long))] |= 1UL << (i % (8 * sizeof(long)));

 if (!--page->use_cnt) {
  if (page->prev)
   page->prev->next = page->next;
  else
   context->db_list = page->next;
  if (page->next)
   page->next->prev = page->prev;

  mlx5_free_buf(&page->buf);
  free(page);
 }

out:
 pthread_mutex_unlock(&context->db_list_mutex);
}
