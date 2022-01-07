
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int LCI_REQ_SUBELEM_MAX_AGE ;
 int WPA_GET_LE16 (int const*) ;
 int* get_ie (int const*,size_t,int ) ;

__attribute__((used)) static u16 hostapd_parse_location_lci_req_age(const u8 *buf, size_t len)
{
 const u8 *subelem;


 if (len < 3 + 1 + 4)
  return 0;


 subelem = get_ie(buf + 4, len - 4, LCI_REQ_SUBELEM_MAX_AGE);
 if (subelem && subelem[1] == 2)
  return WPA_GET_LE16(subelem + 2);

 return 0;
}
