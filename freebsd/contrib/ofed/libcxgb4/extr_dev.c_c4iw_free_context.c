
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibv_context {int dummy; } ;
struct c4iw_context {scalar_t__ status_page_size; int status_page; } ;


 int free (struct c4iw_context*) ;
 int munmap (int ,scalar_t__) ;
 struct c4iw_context* to_c4iw_context (struct ibv_context*) ;

__attribute__((used)) static void c4iw_free_context(struct ibv_context *ibctx)
{
 struct c4iw_context *context = to_c4iw_context(ibctx);

 if (context->status_page_size)
  munmap(context->status_page, context->status_page_size);
 free(context);
}
