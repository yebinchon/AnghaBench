
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int ib_port; int num_clients; int num_tests; int gidx; scalar_t__ sl; int mtu; } ;


 int IBV_MTU_2048 ;
 TYPE_1__ ctx ;
 int getpid () ;
 int srand48 (int) ;
 int time (int *) ;

__attribute__((used)) static void init(void)
{
 srand48(getpid() * time(((void*)0)));

 ctx.size = 4096;
 ctx.ib_port = 1;
 ctx.num_clients = 1;
 ctx.num_tests = 5;
 ctx.mtu = IBV_MTU_2048;
 ctx.sl = 0;
 ctx.gidx = -1;
}
