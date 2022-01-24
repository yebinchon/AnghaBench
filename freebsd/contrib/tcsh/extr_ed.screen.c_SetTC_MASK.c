#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct termcapval {char* name; int val; } ;
struct termcapstr {char* name; } ;
typedef  void* Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*) ; 
 int ERR_NAME ; 
 int ERR_SETTCUS ; 
 int ERR_TCCAP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MARGIN_AUTO ; 
 int /*<<< orphan*/  MARGIN_MAGIC ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct termcapstr*,char*) ; 
 scalar_t__ T_CanCEOL ; 
 int T_CanDel ; 
 int T_CanIns ; 
 int T_CanUP ; 
 void* T_Cols ; 
 int /*<<< orphan*/  T_DC ; 
 void* T_HasMeta ; 
 int /*<<< orphan*/  T_IC ; 
 void* T_Lines ; 
 int /*<<< orphan*/  T_Margin ; 
 void* T_Tabs ; 
 int /*<<< orphan*/  T_UP ; 
 size_t T_am ; 
 int /*<<< orphan*/  T_ce ; 
 size_t T_co ; 
 int /*<<< orphan*/  T_dc ; 
 int /*<<< orphan*/  T_ic ; 
 int /*<<< orphan*/  T_im ; 
 size_t T_km ; 
 size_t T_li ; 
 int /*<<< orphan*/  T_me ; 
 size_t T_pt ; 
 int /*<<< orphan*/  T_se ; 
 int /*<<< orphan*/  T_ue ; 
 int /*<<< orphan*/  T_up ; 
 size_t T_xn ; 
 void* FUNC4 (size_t) ; 
 int FUNC5 (char*) ; 
 int me_all ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 struct termcapstr* tstr ; 
 struct termcapval* tval ; 

void
FUNC9(char *what, char *how)
{
    struct termcapstr *ts;
    struct termcapval *tv;

    /*
     * Do the strings first
     */
    FUNC6("settc");
    for (ts = tstr; ts->name != NULL; ts++)
	if (FUNC8(ts->name, what) == 0)
	    break;
    if (ts->name != NULL) {
	FUNC3(ts, how);
	/*
	 * Reset variables
	 */
	if (FUNC1(T_me) && FUNC1(T_ue))
	    me_all = (FUNC8(FUNC2(T_me), FUNC2(T_ue)) == 0);
	else
	    me_all = 0;
	if (FUNC1(T_me) && FUNC1(T_se))
	    me_all |= (FUNC8(FUNC2(T_me), FUNC2(T_se)) == 0);

	T_CanCEOL = FUNC1(T_ce);
	T_CanDel = FUNC1(T_dc) || FUNC1(T_DC);
	T_CanIns = FUNC1(T_im) || FUNC1(T_ic) || FUNC1(T_IC);
	T_CanUP = FUNC1(T_up) || FUNC1(T_UP);
	return;
    }

    /*
     * Do the numeric ones second
     */
    for (tv = tval; tv->name != NULL; tv++)
	if (FUNC8(tv->name, what) == 0)
	    break;

    if (tv->name != NULL) {
	if (tv == &tval[T_pt] || tv == &tval[T_km] || 
	    tv == &tval[T_am] || tv == &tval[T_xn]) {
	    if (FUNC8(how, "yes") == 0)
		tv->val = 1;
	    else if (FUNC8(how, "no") == 0)
		tv->val = 0;
	    else {
		FUNC7(ERR_SETTCUS, tv->name);
		return;
	    }
	    T_Tabs = FUNC4(T_pt);
	    T_HasMeta = FUNC4(T_km);
	    T_Margin = FUNC4(T_am) ? MARGIN_AUTO : 0;
	    T_Margin |= FUNC4(T_xn) ? MARGIN_MAGIC : 0;
	    if (tv == &tval[T_am] || tv == &tval[T_xn]) 
		FUNC0(FUNC4(T_li), FUNC4(T_co));
	    return;
	}
	else {
	    tv->val = FUNC5(how);
	    T_Cols = (Char) FUNC4(T_co);
	    T_Lines = (Char) FUNC4(T_li);
	    if (tv == &tval[T_co] || tv == &tval[T_li])
		FUNC0(FUNC4(T_li), FUNC4(T_co));
	    return;
	}
    }
    FUNC7(ERR_NAME | ERR_TCCAP, what);
    return;
}