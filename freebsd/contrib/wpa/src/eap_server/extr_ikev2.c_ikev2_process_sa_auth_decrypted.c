
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ikev2_payloads {int auth_len; int auth; int cert_len; int cert; int idr_len; int idr; } ;
struct ikev2_initiator_data {int dummy; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ ikev2_parse_payloads (struct ikev2_payloads*,int ,int *,int *) ;
 scalar_t__ ikev2_process_auth (struct ikev2_initiator_data*,int ,int ) ;
 scalar_t__ ikev2_process_cert (struct ikev2_initiator_data*,int ,int ) ;
 scalar_t__ ikev2_process_idr (struct ikev2_initiator_data*,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int ikev2_process_sa_auth_decrypted(struct ikev2_initiator_data *data,
        u8 next_payload,
        u8 *payload, size_t payload_len)
{
 struct ikev2_payloads pl;

 wpa_printf(MSG_DEBUG, "IKEV2: Processing decrypted payloads");

 if (ikev2_parse_payloads(&pl, next_payload, payload, payload +
     payload_len) < 0) {
  wpa_printf(MSG_INFO, "IKEV2: Failed to parse decrypted "
      "payloads");
  return -1;
 }

 if (ikev2_process_idr(data, pl.idr, pl.idr_len) < 0 ||
     ikev2_process_cert(data, pl.cert, pl.cert_len) < 0 ||
     ikev2_process_auth(data, pl.auth, pl.auth_len) < 0)
  return -1;

 return 0;
}
