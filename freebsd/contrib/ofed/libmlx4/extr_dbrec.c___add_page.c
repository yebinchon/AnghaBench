
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_db_page {int num_db; struct mlx4_db_page* prev; struct mlx4_db_page* next; int * free; scalar_t__ use_cnt; int buf; } ;
struct TYPE_3__ {int device; } ;
struct mlx4_context {struct mlx4_db_page** db_list; TYPE_1__ ibv_ctx; } ;
typedef enum mlx4_db_type { ____Placeholder_mlx4_db_type } mlx4_db_type ;
struct TYPE_4__ {int page_size; } ;


 int* db_size ;
 int free (struct mlx4_db_page*) ;
 struct mlx4_db_page* malloc (int) ;
 scalar_t__ mlx4_alloc_buf (int *,int,int) ;
 TYPE_2__* to_mdev (int ) ;

__attribute__((used)) static struct mlx4_db_page *__add_page(struct mlx4_context *context,
           enum mlx4_db_type type)
{
 struct mlx4_db_page *page;
 int ps = to_mdev(context->ibv_ctx.device)->page_size;
 int pp;
 int i;

 pp = ps / db_size[type];

 page = malloc(sizeof *page + pp / 8);
 if (!page)
  return ((void*)0);

 if (mlx4_alloc_buf(&page->buf, ps, ps)) {
  free(page);
  return ((void*)0);
 }

 page->num_db = pp;
 page->use_cnt = 0;
 for (i = 0; i < pp / (sizeof (long) * 8); ++i)
  page->free[i] = ~0;

 page->prev = ((void*)0);
 page->next = context->db_list[type];
 context->db_list[type] = page;
 if (page->next)
  page->next->prev = page;

 return page;
}
