
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_server {int status_request_multi; } ;


 int MSG_DEBUG ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static void tls_process_status_request_item(struct tlsv1_server *conn,
         const u8 *req, size_t req_len)
{
 const u8 *pos, *end;
 u8 status_type;

 pos = req;
 end = req + req_len;
 if (end - pos < 1)
  return;

 status_type = *pos++;
 wpa_printf(MSG_DEBUG, "TLSv1: CertificateStatusType %u", status_type);
 if (status_type != 1 && status_type != 2)
  return;




 wpa_hexdump(MSG_DEBUG, "TLSv1: OCSPStatusRequest", pos, end - pos);

 if (status_type == 2)
  conn->status_request_multi = 1;
}
