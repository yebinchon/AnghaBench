
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMTYPE ;


 void* ABSENT_STRING ;
 int FALSE ;
 int SHOW_WHY (char*) ;
 int TRUE ;
 scalar_t__ VALID_STRING (int ) ;
 int acs_chars ;
 void* enter_alt_charset_mode ;
 void* exit_alt_charset_mode ;
 int one_one_mapping (int ) ;

__attribute__((used)) static bool
purged_acs(TERMTYPE *tterm)
{
    bool result = FALSE;

    if (VALID_STRING(acs_chars)) {
 if (!one_one_mapping(acs_chars)) {
     enter_alt_charset_mode = ABSENT_STRING;
     exit_alt_charset_mode = ABSENT_STRING;
     SHOW_WHY("# (rmacs/smacs removed for consistency)\n");
 }
 result = TRUE;
    }
    return result;
}
