
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;

struct wpabuf * tncs_process_soh(const u8 *soh_tlv, size_t soh_tlv_len,
     int *failure)
{
 wpa_hexdump(MSG_DEBUG, "TNC: SoH TLV", soh_tlv, soh_tlv_len);
 *failure = 0;



 return ((void*)0);
}
