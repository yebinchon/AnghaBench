
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_property_placeholder (void*,char const*,int,void**) ;
 int memcpy (void*,void const*,int) ;

int fdt_property(void *fdt, const char *name, const void *val, int len)
{
 void *ptr;
 int ret;

 ret = fdt_property_placeholder(fdt, name, len, &ptr);
 if (ret)
  return ret;
 memcpy(ptr, val, len);
 return 0;
}
