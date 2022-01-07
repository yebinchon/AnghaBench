
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int utf8proc_int32_t ;
typedef int utf8proc_bool ;


 int UTF8PROC_BOUNDCLASS_EXTEND ;
 int UTF8PROC_BOUNDCLASS_E_BASE ;
 int UTF8PROC_BOUNDCLASS_E_BASE_GAZ ;
 int UTF8PROC_BOUNDCLASS_OTHER ;
 int UTF8PROC_BOUNDCLASS_REGIONAL_INDICATOR ;
 int UTF8PROC_BOUNDCLASS_START ;
 int grapheme_break_simple (int,int) ;

__attribute__((used)) static utf8proc_bool grapheme_break_extended(int lbc, int tbc, utf8proc_int32_t *state)
{
  utf8proc_bool break_permitted;
  int lbc_override = lbc;
  if (state && *state != UTF8PROC_BOUNDCLASS_START)
    lbc_override = *state;
  break_permitted = grapheme_break_simple(lbc_override, tbc);
  if (state) {





    if (*state == tbc && tbc == UTF8PROC_BOUNDCLASS_REGIONAL_INDICATOR)
      *state = UTF8PROC_BOUNDCLASS_OTHER;


    else if ((*state == UTF8PROC_BOUNDCLASS_E_BASE ||
              *state == UTF8PROC_BOUNDCLASS_E_BASE_GAZ) &&
             tbc == UTF8PROC_BOUNDCLASS_EXTEND)
      *state = UTF8PROC_BOUNDCLASS_E_BASE;
    else
      *state = tbc;
  }
  return break_permitted;
}
