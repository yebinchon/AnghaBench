
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_boolean_t ;


 int broadcast_client_enabled ;

isc_boolean_t
get_broadcastclient_flag(void)
{
 return (broadcast_client_enabled);
}
