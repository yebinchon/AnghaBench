
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tlsv1_client {int dummy; } ;
typedef enum tls_ocsp_result { ____Placeholder_tls_ocsp_result } tls_ocsp_result ;


 int MSG_INFO ;
 int TLS_ALERT_DECODE_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_OCSP_INVALID ;
 int WPA_GET_BE24 (int const*) ;
 int tls_alert (struct tlsv1_client*,int ,int ) ;
 int tls_process_ocsp_response (struct tlsv1_client*,int const*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static enum tls_ocsp_result
tls_process_certificate_status_ocsp_response(struct tlsv1_client *conn,
          const u8 *pos, size_t len)
{
 const u8 *end = pos + len;
 u32 ocsp_resp_len;


 if (end - pos < 3) {
  wpa_printf(MSG_INFO, "TLSv1: Too short OCSPResponse");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
  return TLS_OCSP_INVALID;
 }
 ocsp_resp_len = WPA_GET_BE24(pos);
 pos += 3;
 if (end - pos < ocsp_resp_len) {
  wpa_printf(MSG_INFO, "TLSv1: Truncated OCSPResponse");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
  return TLS_OCSP_INVALID;
 }

 return tls_process_ocsp_response(conn, pos, ocsp_resp_len);
}
