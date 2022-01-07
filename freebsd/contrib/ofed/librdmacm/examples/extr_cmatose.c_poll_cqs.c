
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ibv_wc {int dummy; } ;
typedef enum CQ_INDEX { ____Placeholder_CQ_INDEX } CQ_INDEX ;
struct TYPE_4__ {TYPE_1__* nodes; } ;
struct TYPE_3__ {int * cq; int connected; } ;


 int connections ;
 int ibv_poll_cq (int ,int,struct ibv_wc*) ;
 int message_count ;
 int printf (char*,int) ;
 TYPE_2__ test ;

__attribute__((used)) static int poll_cqs(enum CQ_INDEX index)
{
 struct ibv_wc wc[8];
 int done, i, ret;

 for (i = 0; i < connections; i++) {
  if (!test.nodes[i].connected)
   continue;

  for (done = 0; done < message_count; done += ret) {
   ret = ibv_poll_cq(test.nodes[i].cq[index], 8, wc);
   if (ret < 0) {
    printf("cmatose: failed polling CQ: %d\n", ret);
    return ret;
   }
  }
 }
 return 0;
}
