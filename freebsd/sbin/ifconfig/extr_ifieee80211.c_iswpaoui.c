
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int LE_READ_4 (int const*) ;
 int WPA_OUI ;
 int WPA_OUI_TYPE ;

__attribute__((used)) static __inline int
iswpaoui(const u_int8_t *frm)
{
 return frm[1] > 3 && LE_READ_4(frm+2) == ((WPA_OUI_TYPE<<24)|WPA_OUI);
}
