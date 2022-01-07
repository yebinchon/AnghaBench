
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_tnc_data {int tncs; } ;
struct eap_sm {int dummy; } ;


 int MSG_MSGDUMP ;
 int os_free (char*) ;
 size_t os_strlen (char*) ;
 int * tncs_copy_send_buf (int ,int *) ;
 char* tncs_if_tnccs_end () ;
 char* tncs_if_tnccs_start (int ) ;
 size_t tncs_total_send_len (int ) ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int * wpabuf_put (struct wpabuf*,int) ;
 int wpabuf_put_data (struct wpabuf*,char*,size_t) ;

__attribute__((used)) static struct wpabuf * eap_tnc_build(struct eap_sm *sm,
         struct eap_tnc_data *data)
{
 struct wpabuf *req;
 u8 *rpos, *rpos1;
 size_t rlen;
 char *start_buf, *end_buf;
 size_t start_len, end_len;
 size_t imv_len;

 imv_len = tncs_total_send_len(data->tncs);

 start_buf = tncs_if_tnccs_start(data->tncs);
 if (start_buf == ((void*)0))
  return ((void*)0);
 start_len = os_strlen(start_buf);
 end_buf = tncs_if_tnccs_end();
 if (end_buf == ((void*)0)) {
  os_free(start_buf);
  return ((void*)0);
 }
 end_len = os_strlen(end_buf);

 rlen = start_len + imv_len + end_len;
 req = wpabuf_alloc(rlen);
 if (req == ((void*)0)) {
  os_free(start_buf);
  os_free(end_buf);
  return ((void*)0);
 }

 wpabuf_put_data(req, start_buf, start_len);
 os_free(start_buf);

 rpos1 = wpabuf_put(req, 0);
 rpos = tncs_copy_send_buf(data->tncs, rpos1);
 wpabuf_put(req, rpos - rpos1);

 wpabuf_put_data(req, end_buf, end_len);
 os_free(end_buf);

 wpa_hexdump_ascii(MSG_MSGDUMP, "EAP-TNC: Request",
     wpabuf_head(req), wpabuf_len(req));

 return req;
}
