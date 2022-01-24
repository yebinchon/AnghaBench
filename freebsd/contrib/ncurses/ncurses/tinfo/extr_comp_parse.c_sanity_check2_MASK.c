#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  term_names; } ;
typedef  TYPE_1__ TERMTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  acs_chars ; 
 int /*<<< orphan*/  display_clock ; 
 int /*<<< orphan*/  enter_alt_charset_mode ; 
 int /*<<< orphan*/  enter_am_mode ; 
 int /*<<< orphan*/  enter_blink_mode ; 
 int /*<<< orphan*/  enter_bold_mode ; 
 int /*<<< orphan*/  enter_ca_mode ; 
 int /*<<< orphan*/  enter_delete_mode ; 
 int /*<<< orphan*/  enter_dim_mode ; 
 int /*<<< orphan*/  enter_insert_mode ; 
 int /*<<< orphan*/  enter_italics_mode ; 
 int /*<<< orphan*/  enter_protected_mode ; 
 int /*<<< orphan*/  enter_reverse_mode ; 
 int /*<<< orphan*/  enter_secure_mode ; 
 int /*<<< orphan*/  enter_standout_mode ; 
 int /*<<< orphan*/  enter_underline_mode ; 
 int /*<<< orphan*/  enter_xon_mode ; 
 int /*<<< orphan*/  exit_alt_charset_mode ; 
 int /*<<< orphan*/  exit_am_mode ; 
 int /*<<< orphan*/  exit_attribute_mode ; 
 int /*<<< orphan*/  exit_ca_mode ; 
 int /*<<< orphan*/  exit_delete_mode ; 
 int /*<<< orphan*/  exit_insert_mode ; 
 int /*<<< orphan*/  exit_italics_mode ; 
 int /*<<< orphan*/  exit_standout_mode ; 
 int /*<<< orphan*/  exit_underline_mode ; 
 int /*<<< orphan*/  exit_xon_mode ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  from_status_line ; 
 int /*<<< orphan*/  initialize_pair ; 
 int /*<<< orphan*/  label_off ; 
 int /*<<< orphan*/  label_on ; 
 int /*<<< orphan*/  meta_off ; 
 int /*<<< orphan*/  meta_on ; 
 int /*<<< orphan*/  prtr_off ; 
 int /*<<< orphan*/  prtr_on ; 
 int /*<<< orphan*/  remove_clock ; 
 int /*<<< orphan*/  restore_cursor ; 
 int /*<<< orphan*/  save_cursor ; 
 int /*<<< orphan*/  set_attributes ; 
 int /*<<< orphan*/  set_color_pair ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  to_status_line ; 

__attribute__((used)) static void
FUNC6(TERMTYPE *tp, bool literal)
{
    if (!FUNC2(exit_attribute_mode)) {
#ifdef __UNUSED__		/* this casts too wide a net */
	bool terminal_entry = !strchr(tp->term_names, '+');
	if (terminal_entry &&
	    (PRESENT(set_attributes)
	     || PRESENT(enter_standout_mode)
	     || PRESENT(enter_underline_mode)
	     || PRESENT(enter_blink_mode)
	     || PRESENT(enter_bold_mode)
	     || PRESENT(enter_dim_mode)
	     || PRESENT(enter_secure_mode)
	     || PRESENT(enter_protected_mode)
	     || PRESENT(enter_reverse_mode)))
	    _nc_warning("no exit_attribute_mode");
#endif /* __UNUSED__ */
	FUNC1(enter_standout_mode, exit_standout_mode);
	FUNC1(enter_underline_mode, exit_underline_mode);
	FUNC1(enter_italics_mode, exit_italics_mode);
    }

    /* we do this check/fix in postprocess_termcap(), but some packagers
     * prefer to bypass it...
     */
    if (!literal) {
	FUNC4(tp, literal);
	FUNC0(enter_alt_charset_mode, acs_chars);
	FUNC0(exit_alt_charset_mode, acs_chars);
    }

    /* listed in structure-member order of first argument */
    FUNC1(enter_alt_charset_mode, exit_alt_charset_mode);
    FUNC0(enter_blink_mode, exit_attribute_mode);
    FUNC0(enter_bold_mode, exit_attribute_mode);
    FUNC1(exit_ca_mode, enter_ca_mode);
    FUNC1(enter_delete_mode, exit_delete_mode);
    FUNC0(enter_dim_mode, exit_attribute_mode);
    FUNC1(enter_insert_mode, exit_insert_mode);
    FUNC0(enter_secure_mode, exit_attribute_mode);
    FUNC0(enter_protected_mode, exit_attribute_mode);
    FUNC0(enter_reverse_mode, exit_attribute_mode);
    FUNC1(from_status_line, to_status_line);
    FUNC1(meta_off, meta_on);

    FUNC1(prtr_on, prtr_off);
    FUNC1(save_cursor, restore_cursor);
    FUNC1(enter_xon_mode, exit_xon_mode);
    FUNC1(enter_am_mode, exit_am_mode);
    FUNC0(label_off, label_on);
#ifdef remove_clock
    PAIRED(display_clock, remove_clock);
#endif
    FUNC0(set_color_pair, initialize_pair);
}