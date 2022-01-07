
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; int sin6_family; } ;
struct sockaddr_in {int sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct rdma_addrinfo {int ai_src_len; int ai_route_len; int * ai_route; struct sockaddr* ai_src_addr; } ;
struct ibv_path_data {int dummy; } ;
struct TYPE_3__ {int length; } ;
struct acm_msg {struct acm_ep_addr_data* resolve_data; TYPE_1__ hdr; } ;
struct TYPE_4__ {struct ibv_path_data addr; } ;
struct acm_ep_addr_data {int type; int flags; TYPE_2__ info; } ;


 int ACM_EP_FLAG_SOURCE ;



 int ACM_MSG_EP_LENGTH ;
 int ACM_MSG_HDR_LENGTH ;
 int AF_INET ;
 int AF_INET6 ;
 void* calloc (int,int) ;
 int memcpy (int *,struct ibv_path_data*,int) ;

__attribute__((used)) static void ucma_ib_save_resp(struct rdma_addrinfo *rai, struct acm_msg *msg)
{
 struct acm_ep_addr_data *ep_data;
 struct ibv_path_data *path_data = ((void*)0);
 struct sockaddr_in *sin;
 struct sockaddr_in6 *sin6;
 int i, cnt, path_cnt = 0;

 cnt = (msg->hdr.length - ACM_MSG_HDR_LENGTH) / ACM_MSG_EP_LENGTH;
 for (i = 0; i < cnt; i++) {
  ep_data = &msg->resolve_data[i];
  switch (ep_data->type) {
  case 128:
   ep_data->type = 0;
   if (!path_data)
    path_data = (struct ibv_path_data *) ep_data;
   path_cnt++;
   break;
  case 130:
   if (!(ep_data->flags & ACM_EP_FLAG_SOURCE) || rai->ai_src_len)
    break;

   sin = calloc(1, sizeof(*sin));
   if (!sin)
    break;

   sin->sin_family = AF_INET;
   memcpy(&sin->sin_addr, &ep_data->info.addr, 4);
   rai->ai_src_len = sizeof(*sin);
   rai->ai_src_addr = (struct sockaddr *) sin;
   break;
  case 129:
   if (!(ep_data->flags & ACM_EP_FLAG_SOURCE) || rai->ai_src_len)
    break;

   sin6 = calloc(1, sizeof(*sin6));
   if (!sin6)
    break;

   sin6->sin6_family = AF_INET6;
   memcpy(&sin6->sin6_addr, &ep_data->info.addr, 16);
   rai->ai_src_len = sizeof(*sin6);
   rai->ai_src_addr = (struct sockaddr *) sin6;
   break;
  default:
   break;
  }
 }

 rai->ai_route = calloc(path_cnt, sizeof(*path_data));
 if (rai->ai_route) {
  memcpy(rai->ai_route, path_data, path_cnt * sizeof(*path_data));
  rai->ai_route_len = path_cnt * sizeof(*path_data);
 }
}
