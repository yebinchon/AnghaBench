
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ikev2_initiator_data {int state; } ;



 int CREATE_CHILD_SA ;

 int IKE_SA_AUTH ;
 int IKE_SA_INIT ;
 int MSG_INFO ;


 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static int ikev2_validate_rx_state(struct ikev2_initiator_data *data,
       u8 exchange_type, u32 message_id)
{
 switch (data->state) {
 case 128:


  if (exchange_type != IKE_SA_INIT) {
   wpa_printf(MSG_INFO, "IKEV2: Unexpected Exchange Type "
       "%u in SA_INIT state", exchange_type);
   return -1;
  }
  if (message_id != 0) {
   wpa_printf(MSG_INFO, "IKEV2: Unexpected Message ID %u "
       "in SA_INIT state", message_id);
   return -1;
  }
  break;
 case 129:



  if (exchange_type != IKE_SA_AUTH) {
   wpa_printf(MSG_INFO, "IKEV2: Unexpected Exchange Type "
       "%u in SA_AUTH state", exchange_type);
   return -1;
  }
  if (message_id != 1) {
   wpa_printf(MSG_INFO, "IKEV2: Unexpected Message ID %u "
       "in SA_AUTH state", message_id);
   return -1;
  }
  break;
 case 131:
  if (exchange_type != CREATE_CHILD_SA) {
   wpa_printf(MSG_INFO, "IKEV2: Unexpected Exchange Type "
       "%u in CHILD_SA state", exchange_type);
   return -1;
  }
  if (message_id != 2) {
   wpa_printf(MSG_INFO, "IKEV2: Unexpected Message ID %u "
       "in CHILD_SA state", message_id);
   return -1;
  }
  break;
 case 130:
  return -1;
 }

 return 0;
}
