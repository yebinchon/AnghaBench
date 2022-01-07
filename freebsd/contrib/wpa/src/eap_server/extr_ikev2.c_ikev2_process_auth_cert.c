
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ikev2_initiator_data {int dummy; } ;


 scalar_t__ AUTH_RSA_SIGN ;
 int MSG_INFO ;
 int wpa_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static int ikev2_process_auth_cert(struct ikev2_initiator_data *data,
       u8 method, const u8 *auth, size_t auth_len)
{
 if (method != AUTH_RSA_SIGN) {
  wpa_printf(MSG_INFO, "IKEV2: Unsupported authentication "
      "method %d", method);
  return -1;
 }


 return 0;
}
