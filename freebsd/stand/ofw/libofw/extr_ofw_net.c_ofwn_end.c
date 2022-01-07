
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int dummy; } ;


 int MAXPHYS ;
 int OF_call_method (char*,int ,int,int ,int ,int ) ;
 int OF_close (int ) ;
 int dmabuf ;
 int netinstance ;

__attribute__((used)) static void
ofwn_end(struct netif *nif)
{




 OF_close(netinstance);
}
