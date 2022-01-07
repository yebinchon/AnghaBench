
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct ikev2_hdr {int length; } ;


 int WPA_PUT_BE32 (int ,int ) ;
 int wpabuf_len (struct wpabuf*) ;
 struct ikev2_hdr* wpabuf_mhead (struct wpabuf*) ;

void ikev2_update_hdr(struct wpabuf *msg)
{
 struct ikev2_hdr *hdr;


 hdr = wpabuf_mhead(msg);
 WPA_PUT_BE32(hdr->length, wpabuf_len(msg));
}
