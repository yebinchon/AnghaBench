
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int AVP_PAD (int *,int *) ;
 int * eap_ttls_avp_hdr (int *,int ,int ,int,size_t) ;
 int os_memcpy (int *,int const*,size_t) ;

__attribute__((used)) static u8 * eap_ttls_avp_add(u8 *start, u8 *avphdr, u32 avp_code,
        u32 vendor_id, int mandatory,
        const u8 *data, size_t len)
{
 u8 *pos;
 pos = eap_ttls_avp_hdr(avphdr, avp_code, vendor_id, mandatory, len);
 os_memcpy(pos, data, len);
 pos += len;
 AVP_PAD(start, pos);
 return pos;
}
