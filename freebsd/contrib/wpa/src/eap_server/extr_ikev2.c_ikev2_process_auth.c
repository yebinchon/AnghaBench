
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ikev2_initiator_data {int peer_auth; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int MSG_MSGDUMP ;


 int ikev2_process_auth_cert (struct ikev2_initiator_data*,int ,int const*,size_t) ;
 int ikev2_process_auth_secret (struct ikev2_initiator_data*,int ,int const*,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int ikev2_process_auth(struct ikev2_initiator_data *data,
         const u8 *auth, size_t auth_len)
{
 u8 auth_method;

 if (auth == ((void*)0)) {
  wpa_printf(MSG_INFO, "IKEV2: No Authentication Payload");
  return -1;
 }

 if (auth_len < 4) {
  wpa_printf(MSG_INFO, "IKEV2: Too short Authentication "
      "Payload");
  return -1;
 }

 auth_method = auth[0];
 auth += 4;
 auth_len -= 4;

 wpa_printf(MSG_DEBUG, "IKEV2: Auth Method %d", auth_method);
 wpa_hexdump(MSG_MSGDUMP, "IKEV2: Authentication Data", auth, auth_len);

 switch (data->peer_auth) {
 case 129:
  return ikev2_process_auth_cert(data, auth_method, auth,
            auth_len);
 case 128:
  return ikev2_process_auth_secret(data, auth_method, auth,
       auth_len);
 }

 return -1;
}
