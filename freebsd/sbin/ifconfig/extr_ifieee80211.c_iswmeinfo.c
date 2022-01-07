
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int LE_READ_4 (int const*) ;
 int const WME_INFO_OUI_SUBTYPE ;
 int WME_OUI ;
 int WME_OUI_TYPE ;

__attribute__((used)) static __inline int
iswmeinfo(const u_int8_t *frm)
{
 return frm[1] > 5 && LE_READ_4(frm+2) == ((WME_OUI_TYPE<<24)|WME_OUI) &&
  frm[6] == WME_INFO_OUI_SUBTYPE;
}
