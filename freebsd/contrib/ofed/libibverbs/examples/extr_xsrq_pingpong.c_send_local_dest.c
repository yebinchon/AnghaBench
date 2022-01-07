
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ibv_gid {int dummy; } ibv_gid ;
typedef int uint32_t ;
typedef int local_gid ;
typedef int gid ;
struct TYPE_8__ {scalar_t__ gidx; TYPE_3__* rem_dest; TYPE_2__** send_qp; TYPE_1__** recv_qp; int lid; int srq; int ib_port; int context; } ;
struct TYPE_7__ {int recv_psn; } ;
struct TYPE_6__ {int qp_num; } ;
struct TYPE_5__ {int qp_num; } ;


 char* ADDR_FORMAT ;
 int AF_INET6 ;
 char* MSG_FORMAT ;
 int MSG_SIZE ;
 TYPE_4__ ctx ;
 int fprintf (int ,char*,...) ;
 int gid_to_wire_gid (union ibv_gid*,char*) ;
 scalar_t__ ibv_get_srq_num (int ,int *) ;
 scalar_t__ ibv_query_gid (int ,int ,scalar_t__,union ibv_gid*) ;
 int inet_ntop (int ,union ibv_gid*,char*,int) ;
 int lrand48 () ;
 int memset (union ibv_gid*,int ,int) ;
 int printf (char*,char*,int ,int ,int ,int,int ,char*) ;
 int sprintf (char*,char*,int ,int ,int ,int,int ,char*) ;
 int stderr ;
 int write (int,char*,int) ;

__attribute__((used)) static int send_local_dest(int sockfd, int index)
{
 char msg[MSG_SIZE];
 char gid[33];
 uint32_t srq_num;
 union ibv_gid local_gid;

 if (ctx.gidx >= 0) {
  if (ibv_query_gid(ctx.context, ctx.ib_port, ctx.gidx,
      &local_gid)) {
   fprintf(stderr, "can't read sgid of index %d\n",
    ctx.gidx);
   return -1;
  }
 } else {
  memset(&local_gid, 0, sizeof(local_gid));
 }

 ctx.rem_dest[index].recv_psn = lrand48() & 0xffffff;
 if (ibv_get_srq_num(ctx.srq, &srq_num)) {
  fprintf(stderr, "Couldn't get SRQ num\n");
  return -1;
 }

 inet_ntop(AF_INET6, &local_gid, gid, sizeof(gid));
 printf(ADDR_FORMAT, "local", ctx.lid, ctx.recv_qp[index]->qp_num,
  ctx.send_qp[index]->qp_num, ctx.rem_dest[index].recv_psn,
  srq_num, gid);

 gid_to_wire_gid(&local_gid, gid);
 sprintf(msg, MSG_FORMAT, ctx.lid, ctx.recv_qp[index]->qp_num,
  ctx.send_qp[index]->qp_num, ctx.rem_dest[index].recv_psn,
  srq_num, gid);

 if (write(sockfd, msg, MSG_SIZE) != MSG_SIZE) {
  fprintf(stderr, "Couldn't send local address\n");
  return -1;
 }

 return 0;
}
