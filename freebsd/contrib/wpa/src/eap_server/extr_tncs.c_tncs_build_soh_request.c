
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int EAP_TLV_VENDOR_SPECIFIC_TLV ;
 int EAP_VENDOR_MICROSOFT ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;

struct wpabuf * tncs_build_soh_request(void)
{
 struct wpabuf *buf;






 buf = wpabuf_alloc(8 + 4);
 if (buf == ((void*)0))
  return ((void*)0);


 wpabuf_put_be16(buf, EAP_TLV_VENDOR_SPECIFIC_TLV);
 wpabuf_put_be16(buf, 8);

 wpabuf_put_be32(buf, EAP_VENDOR_MICROSOFT);

 wpabuf_put_be16(buf, 0x02);
 wpabuf_put_be16(buf, 0);

 return buf;
}
