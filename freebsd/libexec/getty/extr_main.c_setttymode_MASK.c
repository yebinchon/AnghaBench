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

/* Variables and functions */
 int /*<<< orphan*/  FIOASYNC ; 
 int /*<<< orphan*/  FIONBIO ; 
 scalar_t__ IS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ OS ; 
 scalar_t__ SP ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TCIOFLUSH ; 
 int /*<<< orphan*/  TCSANOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmode ; 
 int /*<<< orphan*/  ttyn ; 

__attribute__((used)) static void
FUNC11(int raw)
{
	int off = 0;

	(void)FUNC9(STDIN_FILENO, TCIOFLUSH);	/* clear out the crap */
	FUNC4(STDIN_FILENO, FIONBIO, &off);	/* turn off non-blocking mode */
	FUNC4(STDIN_FILENO, FIOASYNC, &off);	/* ditto for async mode */

	if (IS)
		FUNC1(&tmode, FUNC7(IS));
	else if (SP)
		FUNC1(&tmode, FUNC7(SP));
	if (OS)
		FUNC2(&tmode, FUNC7(OS));
	else if (SP)
		FUNC2(&tmode, FUNC7(SP));
	FUNC5(0);
	FUNC6();
	if (raw)
		FUNC0(&tmode);
	if (FUNC10(STDIN_FILENO, TCSANOW, &tmode) < 0) {
		FUNC8(LOG_ERR, "tcsetattr %s: %m", ttyn);
		FUNC3(1);
	}
}