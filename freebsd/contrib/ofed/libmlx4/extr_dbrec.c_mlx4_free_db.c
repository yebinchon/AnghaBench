
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
struct mlx4_db_page {unsigned long* free; TYPE_4__ buf; TYPE_2__* prev; struct mlx4_db_page* next; int use_cnt; } ;
struct TYPE_5__ {int device; } ;
struct mlx4_context {int db_list_mutex; struct mlx4_db_page** db_list; TYPE_1__ ibv_ctx; } ;
typedef enum mlx4_db_type { ____Placeholder_mlx4_db_type } mlx4_db_type ;
struct TYPE_7__ {uintptr_t page_size; } ;
struct TYPE_6__ {struct mlx4_db_page* next; } ;


 int* db_size ;
 int free (struct mlx4_db_page*) ;
 int mlx4_free_buf (TYPE_4__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_3__* to_mdev (int ) ;

void mlx4_free_db(struct mlx4_context *context, enum mlx4_db_type type, uint32_t *db)
{
 struct mlx4_db_page *page;
 uintptr_t ps = to_mdev(context->ibv_ctx.device)->page_size;
 int i;

 pthread_mutex_lock(&context->db_list_mutex);

 for (page = context->db_list[type]; page; page = page->next)
  if (((uintptr_t) db & ~(ps - 1)) == (uintptr_t) page->buf.buf)
   break;

 if (!page)
  goto out;

 i = ((void *) db - page->buf.buf) / db_size[type];
 page->free[i / (8 * sizeof (long))] |= 1UL << (i % (8 * sizeof (long)));

 if (!--page->use_cnt) {
  if (page->prev)
   page->prev->next = page->next;
  else
   context->db_list[type] = page->next;
  if (page->next)
   page->next->prev = page->prev;

  mlx4_free_buf(&page->buf);
  free(page);
 }

out:
 pthread_mutex_unlock(&context->db_list_mutex);
}
