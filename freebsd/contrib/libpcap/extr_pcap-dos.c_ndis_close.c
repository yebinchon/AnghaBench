
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ARGSUSED (struct device*) ;
 int NdisShutdown () ;

__attribute__((used)) static void ndis_close (struct device *dev)
{



  ARGSUSED (dev);
}
