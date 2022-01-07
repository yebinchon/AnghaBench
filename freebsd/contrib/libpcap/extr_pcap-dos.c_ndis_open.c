
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int flags; } ;


 int ARGSUSED (int) ;
 int IFF_PROMISC ;
 int NdisInit (int) ;

__attribute__((used)) static int ndis_open (struct device *dev)
{
  int promis = (dev->flags & IFF_PROMISC);






  ARGSUSED (promis);
  return (0);

}
