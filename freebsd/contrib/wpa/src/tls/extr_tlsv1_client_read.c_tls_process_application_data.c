
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tlsv1_client {int dummy; } ;


 int MSG_DEBUG ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_ALERT_UNEXPECTED_MESSAGE ;
 scalar_t__ TLS_CONTENT_TYPE_APPLICATION_DATA ;
 scalar_t__* os_malloc (size_t) ;
 int os_memcpy (scalar_t__*,scalar_t__ const*,size_t) ;
 int tls_alert (struct tlsv1_client*,int ,int ) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,size_t) ;
 int wpa_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static int tls_process_application_data(struct tlsv1_client *conn, u8 ct,
     const u8 *in_data, size_t *in_len,
     u8 **out_data, size_t *out_len)
{
 const u8 *pos;
 size_t left;

 if (ct != TLS_CONTENT_TYPE_APPLICATION_DATA) {
  wpa_printf(MSG_DEBUG, "TLSv1: Expected Application Data; "
      "received content type 0x%x", ct);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }

 pos = in_data;
 left = *in_len;

 wpa_hexdump(MSG_DEBUG, "TLSv1: Application Data included in Handshake",
      pos, left);

 *out_data = os_malloc(left);
 if (*out_data) {
  os_memcpy(*out_data, pos, left);
  *out_len = left;
 }

 return 0;
}
