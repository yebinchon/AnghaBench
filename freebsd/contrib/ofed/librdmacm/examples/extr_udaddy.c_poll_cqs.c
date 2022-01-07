
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_wc {int dummy; } ;
struct TYPE_4__ {int ah; int cq; int connected; } ;
struct TYPE_3__ {TYPE_2__* nodes; } ;


 int connections ;
 int create_reply_ah (TYPE_2__*,struct ibv_wc*) ;
 int ibv_poll_cq (int ,int,struct ibv_wc*) ;
 int message_count ;
 int printf (char*,int) ;
 TYPE_1__ test ;

__attribute__((used)) static int poll_cqs(void)
{
 struct ibv_wc wc[8];
 int done, i, ret;

 for (i = 0; i < connections; i++) {
  if (!test.nodes[i].connected)
   continue;

  for (done = 0; done < message_count; done += ret) {
   ret = ibv_poll_cq(test.nodes[i].cq, 8, wc);
   if (ret < 0) {
    printf("udaddy: failed polling CQ: %d\n", ret);
    return ret;
   }

   if (ret && !test.nodes[i].ah)
    create_reply_ah(&test.nodes[i], wc);
  }
 }
 return 0;
}
