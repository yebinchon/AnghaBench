
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ internal_initialized ;
 int mac_destroy_internal () ;
 int mac_init_internal (int ) ;

int
mac_reload(void)
{

 if (internal_initialized)
  mac_destroy_internal();
 return (mac_init_internal(0));
}
