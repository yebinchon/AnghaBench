
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_device_handler {scalar_t__ linux_major; } ;
struct device_element {int entry; } ;


 int EINVAL ;
 int M_LINUX ;
 int M_WAITOK ;
 int TAILQ_INSERT_TAIL (int *,struct device_element*,int ) ;
 int bcopy (struct linux_device_handler*,int *,int) ;
 int devices ;
 int linux_major_starting ;
 int list ;
 struct device_element* malloc (int,int ,int ) ;

int
linux_device_register_handler(struct linux_device_handler *d)
{
 struct device_element *de;

 if (d == ((void*)0))
  return (EINVAL);

 de = malloc(sizeof(*de), M_LINUX, M_WAITOK);
 if (d->linux_major < 0) {
  d->linux_major = linux_major_starting++;
 }
 bcopy(d, &de->entry, sizeof(*d));


 TAILQ_INSERT_TAIL(&devices, de, list);

 return (0);
}
