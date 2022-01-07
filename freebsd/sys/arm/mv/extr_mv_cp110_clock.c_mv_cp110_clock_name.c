
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int M_DEVBUF ;
 scalar_t__ asprintf (char**,int ,char*,char const*,int) ;
 int device_get_unit (int ) ;
 int panic (char*,char const*) ;

__attribute__((used)) static char *
mv_cp110_clock_name(device_t dev, const char *name)
{
 char *clkname = ((void*)0);
 int unit;

 unit = device_get_unit(dev);
 if (asprintf(&clkname, M_DEVBUF, "%s-%d", name, unit) <= 0)
  panic("Cannot generate unique clock name for %s\n", name);
 return (clkname);
}
