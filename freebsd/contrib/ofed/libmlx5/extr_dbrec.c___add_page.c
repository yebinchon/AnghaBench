
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_db_page {int num_db; struct mlx5_db_page* prev; struct mlx5_db_page* next; int * free; scalar_t__ use_cnt; int buf; } ;
struct TYPE_3__ {int device; } ;
struct mlx5_context {int cache_line_size; struct mlx5_db_page* db_list; TYPE_1__ ibv_ctx; } ;
struct TYPE_4__ {int page_size; } ;


 int free (struct mlx5_db_page*) ;
 struct mlx5_db_page* malloc (int) ;
 scalar_t__ mlx5_alloc_buf (int *,int,int) ;
 TYPE_2__* to_mdev (int ) ;

__attribute__((used)) static struct mlx5_db_page *__add_page(struct mlx5_context *context)
{
 struct mlx5_db_page *page;
 int ps = to_mdev(context->ibv_ctx.device)->page_size;
 int pp;
 int i;
 int nlong;

 pp = ps / context->cache_line_size;
 nlong = (pp + 8 * sizeof(long) - 1) / (8 * sizeof(long));

 page = malloc(sizeof *page + nlong * sizeof(long));
 if (!page)
  return ((void*)0);

 if (mlx5_alloc_buf(&page->buf, ps, ps)) {
  free(page);
  return ((void*)0);
 }

 page->num_db = pp;
 page->use_cnt = 0;
 for (i = 0; i < nlong; ++i)
  page->free[i] = ~0;

 page->prev = ((void*)0);
 page->next = context->db_list;
 context->db_list = page;
 if (page->next)
  page->next->prev = page;

 return page;
}
