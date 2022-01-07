
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_dev {void* priv0; } ;



void *
cuse_dev_get_priv0(struct cuse_dev *cdev)
{
 return (cdev->priv0);
}
