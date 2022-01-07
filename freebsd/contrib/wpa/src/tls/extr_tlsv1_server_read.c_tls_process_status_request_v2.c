
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tlsv1_server {int status_request_v2; } ;


 int WPA_GET_BE16 (int const*) ;
 int tls_process_status_request_item (struct tlsv1_server*,int const*,int) ;

__attribute__((used)) static void tls_process_status_request_v2(struct tlsv1_server *conn,
       const u8 *ext, size_t ext_len)
{
 const u8 *pos, *end;

 conn->status_request_v2 = 1;

 pos = ext;
 end = ext + ext_len;
 while (end - pos >= 2) {
  u16 len;

  len = WPA_GET_BE16(pos);
  pos += 2;
  if (len > end - pos)
   break;
  tls_process_status_request_item(conn, pos, len);
  pos += len;
 }
}
