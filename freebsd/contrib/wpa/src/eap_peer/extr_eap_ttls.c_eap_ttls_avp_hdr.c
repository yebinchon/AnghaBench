
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ttls_avp_vendor {void* avp_length; void* avp_code; void* vendor_id; } ;
struct ttls_avp {int dummy; } ;


 scalar_t__ AVP_FLAGS_MANDATORY ;
 scalar_t__ AVP_FLAGS_VENDOR ;
 void* host_to_be32 (int) ;

__attribute__((used)) static u8 * eap_ttls_avp_hdr(u8 *avphdr, u32 avp_code, u32 vendor_id,
        int mandatory, size_t len)
{
 struct ttls_avp_vendor *avp;
 u8 flags;
 size_t hdrlen;

 avp = (struct ttls_avp_vendor *) avphdr;
 flags = mandatory ? AVP_FLAGS_MANDATORY : 0;
 if (vendor_id) {
  flags |= AVP_FLAGS_VENDOR;
  hdrlen = sizeof(*avp);
  avp->vendor_id = host_to_be32(vendor_id);
 } else {
  hdrlen = sizeof(struct ttls_avp);
 }

 avp->avp_code = host_to_be32(avp_code);
 avp->avp_length = host_to_be32(((u32) flags << 24) |
           (u32) (hdrlen + len));

 return avphdr + hdrlen;
}
