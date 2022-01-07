
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMTYPE ;


 int ANDMISSING (int ,int ) ;
 int PAIRED (int ,int ) ;
 int enter_doublewide_mode ;
 int enter_italics_mode ;
 int enter_leftward_mode ;
 int enter_micro_mode ;
 int enter_shadow_mode ;
 int enter_subscript_mode ;
 int enter_superscript_mode ;
 int enter_upward_mode ;
 int exit_doublewide_mode ;
 int exit_italics_mode ;
 int exit_leftward_mode ;
 int exit_micro_mode ;
 int exit_shadow_mode ;
 int exit_subscript_mode ;
 int exit_superscript_mode ;
 int exit_upward_mode ;
 int micro_down ;
 int micro_left ;
 int micro_right ;
 int micro_up ;
 int parm_down_micro ;
 int parm_left_micro ;
 int parm_right_micro ;
 int parm_up_micro ;
 int set_bottom_margin ;
 int set_bottom_margin_parm ;
 int set_left_margin ;
 int set_left_margin_parm ;
 int set_right_margin ;
 int set_right_margin_parm ;
 int set_top_margin ;
 int set_top_margin_parm ;
 int start_char_set_def ;
 int stop_char_set_def ;

__attribute__((used)) static void
check_printer(TERMTYPE *tp)
{
    PAIRED(enter_doublewide_mode, exit_doublewide_mode);
    PAIRED(enter_italics_mode, exit_italics_mode);
    PAIRED(enter_leftward_mode, exit_leftward_mode);
    PAIRED(enter_micro_mode, exit_micro_mode);
    PAIRED(enter_shadow_mode, exit_shadow_mode);
    PAIRED(enter_subscript_mode, exit_subscript_mode);
    PAIRED(enter_superscript_mode, exit_superscript_mode);
    PAIRED(enter_upward_mode, exit_upward_mode);

    ANDMISSING(start_char_set_def, stop_char_set_def);


    ANDMISSING(set_bottom_margin_parm, set_bottom_margin);
    ANDMISSING(set_left_margin_parm, set_left_margin);
    ANDMISSING(set_right_margin_parm, set_right_margin);
    ANDMISSING(set_top_margin_parm, set_top_margin);

    ANDMISSING(parm_down_micro, micro_down);
    ANDMISSING(parm_left_micro, micro_left);
    ANDMISSING(parm_right_micro, micro_right);
    ANDMISSING(parm_up_micro, micro_up);
}
