
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wpa_driver_if_type { ____Placeholder_wpa_driver_if_type } wpa_driver_if_type ;





 int WPA_IF_P2P_CLIENT ;
 int WPA_IF_P2P_GO ;
 int WPA_IF_P2P_GROUP ;

__attribute__((used)) static enum wpa_driver_if_type wpas_p2p_if_type(int p2p_group_interface)
{
 switch (p2p_group_interface) {
 case 128:
  return WPA_IF_P2P_GROUP;
 case 129:
  return WPA_IF_P2P_GO;
 case 130:
  return WPA_IF_P2P_CLIENT;
 }

 return WPA_IF_P2P_GROUP;
}
