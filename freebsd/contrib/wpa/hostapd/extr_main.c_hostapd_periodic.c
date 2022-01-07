
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hapd_interfaces {int dummy; } ;


 int HOSTAPD_CLEANUP_INTERVAL ;
 int eloop_register_timeout (int ,int ,void (*) (void*,void*),struct hapd_interfaces*,int *) ;
 int hostapd_for_each_interface (struct hapd_interfaces*,int ,int *) ;
 int hostapd_periodic_call ;

__attribute__((used)) static void hostapd_periodic(void *eloop_ctx, void *timeout_ctx)
{
 struct hapd_interfaces *interfaces = eloop_ctx;

 eloop_register_timeout(HOSTAPD_CLEANUP_INTERVAL, 0,
          hostapd_periodic, interfaces, ((void*)0));
 hostapd_for_each_interface(interfaces, hostapd_periodic_call, ((void*)0));
}
