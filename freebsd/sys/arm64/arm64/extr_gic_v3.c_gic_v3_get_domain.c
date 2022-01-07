
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gic_v3_devinfo {int gic_domain; } ;
typedef int device_t ;


 int ENOENT ;
 struct gic_v3_devinfo* device_get_ivars (int ) ;

__attribute__((used)) static int
gic_v3_get_domain(device_t dev, device_t child, int *domain)
{
 struct gic_v3_devinfo *di;

 di = device_get_ivars(child);
 if (di->gic_domain < 0)
  return (ENOENT);

 *domain = di->gic_domain;
 return (0);
}
