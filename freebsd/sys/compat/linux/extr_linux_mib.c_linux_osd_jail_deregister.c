
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int linux_osd_jail_slot ;
 int osd_jail_deregister (int ) ;

void
linux_osd_jail_deregister(void)
{

 osd_jail_deregister(linux_osd_jail_slot);
}
