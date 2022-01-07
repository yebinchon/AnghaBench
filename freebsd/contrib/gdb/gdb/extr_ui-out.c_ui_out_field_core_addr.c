
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
typedef int CORE_ADDR ;


 int TARGET_ADDR_BIT ;
 int local_hex_string_custom (int ,char*) ;
 int strcpy (char*,int ) ;
 int ui_out_field_string (struct ui_out*,char const*,char*) ;

void
ui_out_field_core_addr (struct ui_out *uiout,
   const char *fldname,
   CORE_ADDR address)
{
  char addstr[20];





  if (TARGET_ADDR_BIT <= 32)
    strcpy (addstr, local_hex_string_custom (address, "08l"));
  else
    strcpy (addstr, local_hex_string_custom (address, "016l"));

  ui_out_field_string (uiout, fldname, addstr);
}
