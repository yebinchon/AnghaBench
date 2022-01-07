
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int kfree (struct device*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void
linux_device_release(struct device *dev)
{
 pr_debug("linux_device_release: %s\n", dev_name(dev));
 kfree(dev);
}
