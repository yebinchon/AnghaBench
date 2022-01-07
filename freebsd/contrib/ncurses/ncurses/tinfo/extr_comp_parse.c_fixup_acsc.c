
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMTYPE ;


 int VT_ACSC ;
 scalar_t__ acs_chars ;
 scalar_t__ enter_alt_charset_mode ;
 scalar_t__ exit_alt_charset_mode ;
 scalar_t__ strdup (int ) ;

__attribute__((used)) static void
fixup_acsc(TERMTYPE *tp, int literal)
{
    if (!literal) {
 if (acs_chars == 0
     && enter_alt_charset_mode != 0
     && exit_alt_charset_mode != 0)
     acs_chars = strdup(VT_ACSC);
    }
}
