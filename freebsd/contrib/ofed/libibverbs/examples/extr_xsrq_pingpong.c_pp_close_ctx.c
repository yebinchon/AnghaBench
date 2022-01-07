
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_clients; scalar_t__ fd; TYPE_1__* recv_qp; TYPE_1__* send_qp; TYPE_1__* rem_dest; TYPE_1__* buf; int context; scalar_t__ channel; int pd; int mr; int recv_cq; int send_cq; scalar_t__ xrcd; int srq; } ;
struct TYPE_4__ {scalar_t__ sockfd; } ;


 int close (scalar_t__) ;
 TYPE_3__ ctx ;
 int fprintf (int ,char*,...) ;
 int free (TYPE_1__*) ;
 scalar_t__ ibv_close_device (int ) ;
 scalar_t__ ibv_close_xrcd (scalar_t__) ;
 scalar_t__ ibv_dealloc_pd (int ) ;
 scalar_t__ ibv_dereg_mr (int ) ;
 scalar_t__ ibv_destroy_comp_channel (scalar_t__) ;
 scalar_t__ ibv_destroy_cq (int ) ;
 scalar_t__ ibv_destroy_qp (TYPE_1__) ;
 scalar_t__ ibv_destroy_srq (int ) ;
 int stderr ;

__attribute__((used)) static int pp_close_ctx(void)
{
 int i;

 for (i = 0; i < ctx.num_clients; ++i) {

  if (ibv_destroy_qp(ctx.send_qp[i])) {
   fprintf(stderr, "Couldn't destroy INI QP[%d]\n", i);
   return 1;
  }

  if (ibv_destroy_qp(ctx.recv_qp[i])) {
   fprintf(stderr, "Couldn't destroy TGT QP[%d]\n", i);
   return 1;
  }

  if (ctx.rem_dest[i].sockfd)
   close(ctx.rem_dest[i].sockfd);
 }

 if (ibv_destroy_srq(ctx.srq)) {
  fprintf(stderr, "Couldn't destroy SRQ\n");
  return 1;
 }

 if (ctx.xrcd && ibv_close_xrcd(ctx.xrcd)) {
  fprintf(stderr, "Couldn't close the XRC Domain\n");
  return 1;
 }
 if (ctx.fd >= 0 && close(ctx.fd)) {
  fprintf(stderr, "Couldn't close the file for the XRC Domain\n");
  return 1;
 }

 if (ibv_destroy_cq(ctx.send_cq)) {
  fprintf(stderr, "Couldn't destroy send CQ\n");
  return 1;
 }

 if (ibv_destroy_cq(ctx.recv_cq)) {
  fprintf(stderr, "Couldn't destroy recv CQ\n");
  return 1;
 }

 if (ibv_dereg_mr(ctx.mr)) {
  fprintf(stderr, "Couldn't deregister MR\n");
  return 1;
 }

 if (ibv_dealloc_pd(ctx.pd)) {
  fprintf(stderr, "Couldn't deallocate PD\n");
  return 1;
 }

 if (ctx.channel) {
  if (ibv_destroy_comp_channel(ctx.channel)) {
   fprintf(stderr,
    "Couldn't destroy completion channel\n");
   return 1;
  }
 }

 if (ibv_close_device(ctx.context)) {
  fprintf(stderr, "Couldn't release context\n");
  return 1;
 }

 free(ctx.buf);
 free(ctx.rem_dest);
 free(ctx.send_qp);
 free(ctx.recv_qp);
 return 0;
}
