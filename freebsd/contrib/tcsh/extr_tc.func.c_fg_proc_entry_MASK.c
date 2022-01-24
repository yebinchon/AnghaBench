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
struct process {int /*<<< orphan*/  p_command; scalar_t__ p_procid; } ;
typedef  int /*<<< orphan*/  jmp_buf_t ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_BADJOB ; 
 scalar_t__ GettingInput ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int alrmcatch_disabled ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int haderr ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  pintr_disabled ; 
 int /*<<< orphan*/  FUNC6 (struct process*) ; 
 int /*<<< orphan*/  FUNC7 (struct process*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void
FUNC13(struct process *pp)
{
    jmp_buf_t osetexit;
    int    ohaderr;
    Char    oGettingInput;
    size_t omark;

    FUNC4(osetexit);

    pintr_disabled++;
    oGettingInput = GettingInput;
    GettingInput = 0;

    ohaderr = haderr;		/* we need to ignore setting of haderr due to
				 * process getting stopped by a signal */
    omark = FUNC2();
    if (FUNC10() == 0) {	/* come back here after pjwait */
	FUNC5();
	(void) FUNC0(0);	/* No autologout */
	alrmcatch_disabled = 1;
	if (!FUNC7(pp, 1)) {
	    pp->p_procid = 0;
	    FUNC11(ERR_BADJOB, pp->p_command, FUNC12(errno));
	}
	FUNC6(pp);
    }
    FUNC9(1);		/* Autologout back on */
    FUNC1(omark);
    FUNC8(osetexit);
    haderr = ohaderr;
    GettingInput = oGettingInput;

    FUNC3(&pintr_disabled);
}