
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int dummy; } ;


 int * pxe_call ;

__attribute__((used)) static int
pxe_netif_probe(struct netif *nif, void *machdep_hint)
{
 if (pxe_call == ((void*)0))
  return (-1);

 return (0);
}
