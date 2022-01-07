
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int ATH_OUI ;
 int ATH_OUI_TYPE ;
 int LE_READ_4 (int const*) ;

__attribute__((used)) static __inline int
isatherosoui(const u_int8_t *frm)
{
 return frm[1] > 3 && LE_READ_4(frm+2) == ((ATH_OUI_TYPE<<24)|ATH_OUI);
}
