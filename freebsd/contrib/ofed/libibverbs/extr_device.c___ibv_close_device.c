
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct verbs_device {TYPE_1__* ops; } ;
struct verbs_context {struct verbs_context* priv; } ;
struct ibv_context {int async_fd; int cmd_fd; int device; } ;
struct TYPE_2__ {int (* free_context ) (struct ibv_context*) ;int (* uninit_context ) (struct verbs_device*,struct ibv_context*) ;} ;


 int abi_ver ;
 int close (int) ;
 int free (struct verbs_context*) ;
 int stub1 (struct verbs_device*,struct ibv_context*) ;
 int stub2 (struct ibv_context*) ;
 struct verbs_context* verbs_get_ctx (struct ibv_context*) ;
 struct verbs_device* verbs_get_device (int ) ;

int __ibv_close_device(struct ibv_context *context)
{
 int async_fd = context->async_fd;
 int cmd_fd = context->cmd_fd;
 int cq_fd = -1;
 struct verbs_context *context_ex;
 struct verbs_device *verbs_device = verbs_get_device(context->device);

 context_ex = verbs_get_ctx(context);
 if (context_ex) {
  verbs_device->ops->uninit_context(verbs_device, context);
  free(context_ex->priv);
  free(context_ex);
 } else {
  verbs_device->ops->free_context(context);
 }

 close(async_fd);
 close(cmd_fd);
 if (abi_ver <= 2)
  close(cq_fd);

 return 0;
}
