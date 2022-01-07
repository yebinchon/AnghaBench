
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int (* close ) (struct device*) ;} ;


 int FLUSHK () ;
 struct device* active_dev ;
 int k_free (int *) ;
 int pcibios_exit () ;
 int * rx_pool ;
 int stub1 (struct device*) ;

__attribute__((used)) static void close_driver (void)
{

  struct device *dev = active_dev;

  if (dev && dev->close)
  {
    (*dev->close) (dev);
    FLUSHK();
  }

  active_dev = ((void*)0);
}
