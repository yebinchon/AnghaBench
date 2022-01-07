
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netif {scalar_t__ nif_unit; } ;
struct devdesc {scalar_t__ d_unit; } ;



__attribute__((used)) static int
efinet_match(struct netif *nif, void *machdep_hint)
{
 struct devdesc *dev = machdep_hint;

 if (dev->d_unit == nif->nif_unit)
  return (1);
 return(0);
}
