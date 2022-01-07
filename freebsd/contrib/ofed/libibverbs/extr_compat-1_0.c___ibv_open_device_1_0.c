
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibv_device_1_0 {int real_device; } ;
struct TYPE_2__ {int post_srq_recv; int post_recv; int post_send; int req_notify_cq; int poll_cq; } ;
struct ibv_context_1_0 {TYPE_1__ ops; struct ibv_context* real_context; struct ibv_device_1_0* device; } ;
struct ibv_context {int dummy; } ;


 int free (struct ibv_context_1_0*) ;
 struct ibv_context* ibv_open_device (int ) ;
 struct ibv_context_1_0* malloc (int) ;
 int poll_cq_wrapper_1_0 ;
 int post_recv_wrapper_1_0 ;
 int post_send_wrapper_1_0 ;
 int post_srq_recv_wrapper_1_0 ;
 int req_notify_cq_wrapper_1_0 ;

struct ibv_context_1_0 *__ibv_open_device_1_0(struct ibv_device_1_0 *device)
{
 struct ibv_context *real_ctx;
 struct ibv_context_1_0 *ctx;

 ctx = malloc(sizeof *ctx);
 if (!ctx)
  return ((void*)0);

 real_ctx = ibv_open_device(device->real_device);
 if (!real_ctx) {
  free(ctx);
  return ((void*)0);
 }

 ctx->device = device;
 ctx->real_context = real_ctx;

 ctx->ops.poll_cq = poll_cq_wrapper_1_0;
 ctx->ops.req_notify_cq = req_notify_cq_wrapper_1_0;
 ctx->ops.post_send = post_send_wrapper_1_0;
 ctx->ops.post_recv = post_recv_wrapper_1_0;
 ctx->ops.post_srq_recv = post_srq_recv_wrapper_1_0;

 return ctx;
}
