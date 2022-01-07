
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_dev_entered {void* per_file_handle; struct cuse_dev* cdev; } ;
struct cuse_dev {int dummy; } ;


 struct cuse_dev_entered* cuse_dev_get_entered () ;

void *
cuse_dev_get_per_file_handle(struct cuse_dev *cdev)
{
 struct cuse_dev_entered *pe;

 pe = cuse_dev_get_entered();
 if (pe == ((void*)0) || pe->cdev != cdev)
  return (((void*)0));

 return (pe->per_file_handle);
}
