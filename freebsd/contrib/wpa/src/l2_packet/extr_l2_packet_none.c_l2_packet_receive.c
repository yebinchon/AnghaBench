
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct l2_packet_data {int rx_callback_ctx; int (* rx_callback ) (int ,int *,scalar_t__*,int) ;} ;


 int stub1 (int ,int *,scalar_t__*,int) ;

__attribute__((used)) static void l2_packet_receive(int sock, void *eloop_ctx, void *sock_ctx)
{
 struct l2_packet_data *l2 = eloop_ctx;
 u8 buf[2300];
 int res;


 buf[0] = 0;
 res = 0;

 l2->rx_callback(l2->rx_callback_ctx, ((void*)0) ,
   buf, res);
}
