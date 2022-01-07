
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int bus_get_resource (int ,int ,int,scalar_t__*,int *) ;

__attribute__((used)) static int
hpet_find_irq_rid(device_t dev, u_long start, u_long end)
{
 rman_res_t irq;
 int error, rid;

 for (rid = 0;; rid++) {
  error = bus_get_resource(dev, SYS_RES_IRQ, rid, &irq, ((void*)0));
  if (error != 0 || (start <= irq && irq <= end))
   return (rid);
 }
}
