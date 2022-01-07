
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_i {int dummy; } ;
struct resource {struct resource* __r_i; } ;
typedef int device_t ;


 int EINVAL ;
 int XXX ;
 int bus_alloc_resource_any_cb (struct resource*,int ,int,int*,unsigned int) ;
 int free (struct resource*,int ) ;
 void* malloc (int,int ,int ) ;
 int stub1 (struct resource*,int ,int,int*,unsigned int) ;

struct resource *
bus_alloc_resource_any(device_t dev, int type, int *rid, unsigned int flags)
{
 struct resource *res;
 int ret = EINVAL;

 res = malloc(sizeof(*res), XXX, XXX);
 if (res == ((void*)0))
  return (((void*)0));

 res->__r_i = malloc(sizeof(struct resource_i), XXX, XXX);
 if (res->__r_i == ((void*)0)) {
  free(res, XXX);
  return (((void*)0));
 }

 if (bus_alloc_resource_any_cb != ((void*)0))
  ret = (*bus_alloc_resource_any_cb)(res, dev, type, rid, flags);
 if (ret == 0)
  return (res);

 free(res->__r_i, XXX);
 free(res, XXX);
 return (((void*)0));
}
