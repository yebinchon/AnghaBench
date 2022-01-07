
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {int dummy; } ;



__attribute__((used)) static int
pxe_netif_match(struct netif *nif, void *machdep_hint)
{
 return (1);
}
