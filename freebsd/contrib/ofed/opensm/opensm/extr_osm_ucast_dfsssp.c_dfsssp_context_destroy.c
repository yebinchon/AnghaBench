
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* links; } ;
typedef TYPE_1__ vertex_t ;
typedef size_t uint32_t ;
typedef TYPE_1__ link_t ;
struct TYPE_6__ {size_t adj_list_size; TYPE_1__* vl_split_count; int * srcdest2vl_table; int * adj_list; } ;
typedef TYPE_3__ dfsssp_context_t ;


 int free (TYPE_1__*) ;
 int vltable_dealloc (int **) ;

__attribute__((used)) static void dfsssp_context_destroy(void *context)
{
 dfsssp_context_t *dfsssp_ctx = (dfsssp_context_t *) context;
 vertex_t *adj_list = (vertex_t *) (dfsssp_ctx->adj_list);
 uint32_t i = 0;
 link_t *link = ((void*)0), *tmp = ((void*)0);


 for (i = 0; i < dfsssp_ctx->adj_list_size; i++) {
  link = adj_list[i].links;
  while (link) {
   tmp = link;
   link = link->next;
   free(tmp);
  }
 }
 free(adj_list);
 dfsssp_ctx->adj_list = ((void*)0);
 dfsssp_ctx->adj_list_size = 0;





 vltable_dealloc(&(dfsssp_ctx->srcdest2vl_table));
 dfsssp_ctx->srcdest2vl_table = ((void*)0);

 if (dfsssp_ctx->vl_split_count) {
  free(dfsssp_ctx->vl_split_count);
  dfsssp_ctx->vl_split_count = ((void*)0);
 }
}
