
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_clients; TYPE_1__** recv_qp; } ;
struct TYPE_3__ {int qp_num; } ;


 TYPE_2__ ctx ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static int find_qp(int qpn)
{
 int i;

 if (ctx.num_clients == 1)
  return 0;

 for (i = 0; i < ctx.num_clients; ++i)
  if (ctx.recv_qp[i]->qp_num == qpn)
   return i;

 fprintf(stderr, "Unable to find qp %x\n", qpn);
 return 0;
}
