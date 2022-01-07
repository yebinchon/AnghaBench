
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctl_ha_status ;
typedef int ctl_ha_channel ;


 int ctl_ha_msg_send2 (int ,void const*,size_t,int *,int ,int) ;

ctl_ha_status
ctl_ha_msg_send(ctl_ha_channel channel, const void *addr, size_t len,
    int wait)
{

 return (ctl_ha_msg_send2(channel, addr, len, ((void*)0), 0, wait));
}
