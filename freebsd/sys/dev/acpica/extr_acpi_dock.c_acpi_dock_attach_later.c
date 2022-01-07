
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ device_t ;


 int Giant ;
 int device_enable (scalar_t__) ;
 int device_is_enabled (scalar_t__) ;
 int device_probe_and_attach (scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
acpi_dock_attach_later(void *context)
{
 device_t dev;

 dev = (device_t)context;

 if (!device_is_enabled(dev))
  device_enable(dev);

 mtx_lock(&Giant);
 device_probe_and_attach(dev);
 mtx_unlock(&Giant);
}
