
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atheros_driver_data {int iface; int ioctl_sock; } ;


 int linux_set_iface_flags (int ,int ,int) ;

__attribute__((used)) static int
atheros_commit(void *priv)
{
 struct atheros_driver_data *drv = priv;
 return linux_set_iface_flags(drv->ioctl_sock, drv->iface, 1);
}
