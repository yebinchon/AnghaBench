
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int term_names; } ;
typedef TYPE_1__ TERMTYPE ;


 int ANDMISSING (int ,int ) ;
 int PAIRED (int ,int ) ;
 scalar_t__ PRESENT (int ) ;
 int _nc_warning (char*) ;
 int acs_chars ;
 int display_clock ;
 int enter_alt_charset_mode ;
 int enter_am_mode ;
 int enter_blink_mode ;
 int enter_bold_mode ;
 int enter_ca_mode ;
 int enter_delete_mode ;
 int enter_dim_mode ;
 int enter_insert_mode ;
 int enter_italics_mode ;
 int enter_protected_mode ;
 int enter_reverse_mode ;
 int enter_secure_mode ;
 int enter_standout_mode ;
 int enter_underline_mode ;
 int enter_xon_mode ;
 int exit_alt_charset_mode ;
 int exit_am_mode ;
 int exit_attribute_mode ;
 int exit_ca_mode ;
 int exit_delete_mode ;
 int exit_insert_mode ;
 int exit_italics_mode ;
 int exit_standout_mode ;
 int exit_underline_mode ;
 int exit_xon_mode ;
 int fixup_acsc (TYPE_1__*,int) ;
 int from_status_line ;
 int initialize_pair ;
 int label_off ;
 int label_on ;
 int meta_off ;
 int meta_on ;
 int prtr_off ;
 int prtr_on ;
 int remove_clock ;
 int restore_cursor ;
 int save_cursor ;
 int set_attributes ;
 int set_color_pair ;
 int strchr (int ,char) ;
 int to_status_line ;

__attribute__((used)) static void
sanity_check2(TERMTYPE *tp, bool literal)
{
    if (!PRESENT(exit_attribute_mode)) {
 PAIRED(enter_standout_mode, exit_standout_mode);
 PAIRED(enter_underline_mode, exit_underline_mode);
 PAIRED(enter_italics_mode, exit_italics_mode);
    }




    if (!literal) {
 fixup_acsc(tp, literal);
 ANDMISSING(enter_alt_charset_mode, acs_chars);
 ANDMISSING(exit_alt_charset_mode, acs_chars);
    }


    PAIRED(enter_alt_charset_mode, exit_alt_charset_mode);
    ANDMISSING(enter_blink_mode, exit_attribute_mode);
    ANDMISSING(enter_bold_mode, exit_attribute_mode);
    PAIRED(exit_ca_mode, enter_ca_mode);
    PAIRED(enter_delete_mode, exit_delete_mode);
    ANDMISSING(enter_dim_mode, exit_attribute_mode);
    PAIRED(enter_insert_mode, exit_insert_mode);
    ANDMISSING(enter_secure_mode, exit_attribute_mode);
    ANDMISSING(enter_protected_mode, exit_attribute_mode);
    ANDMISSING(enter_reverse_mode, exit_attribute_mode);
    PAIRED(from_status_line, to_status_line);
    PAIRED(meta_off, meta_on);

    PAIRED(prtr_on, prtr_off);
    PAIRED(save_cursor, restore_cursor);
    PAIRED(enter_xon_mode, exit_xon_mode);
    PAIRED(enter_am_mode, exit_am_mode);
    ANDMISSING(label_off, label_on);



    ANDMISSING(set_color_pair, initialize_pair);
}
