
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int language; } ;
typedef enum language { ____Placeholder_language } language ;


 scalar_t__ deprecated_selected_frame ;
 struct symtab* find_pc_symtab (int ) ;
 int get_frame_address_in_block (scalar_t__) ;
 int language_unknown ;

enum language
get_frame_language (void)
{
  struct symtab *s;
  enum language flang;

  if (deprecated_selected_frame)
    {







      s = find_pc_symtab (get_frame_address_in_block (deprecated_selected_frame));
      if (s)
 flang = s->language;
      else
 flang = language_unknown;
    }
  else
    flang = language_unknown;

  return flang;
}
