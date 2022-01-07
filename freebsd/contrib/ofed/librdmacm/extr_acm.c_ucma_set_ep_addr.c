
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct TYPE_2__ {int addr; } ;
struct acm_ep_addr_data {TYPE_1__ info; int type; } ;


 int ACM_EP_INFO_ADDRESS_IP ;
 int ACM_EP_INFO_ADDRESS_IP6 ;
 scalar_t__ AF_INET ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void ucma_set_ep_addr(struct acm_ep_addr_data *data, struct sockaddr *addr)
{
 if (addr->sa_family == AF_INET) {
  data->type = ACM_EP_INFO_ADDRESS_IP;
  memcpy(data->info.addr, &((struct sockaddr_in *) addr)->sin_addr, 4);
 } else {
  data->type = ACM_EP_INFO_ADDRESS_IP6;
  memcpy(data->info.addr, &((struct sockaddr_in6 *) addr)->sin6_addr, 16);
 }
}
