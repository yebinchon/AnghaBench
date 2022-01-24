#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  xxfi_name; } ;

/* Variables and functions */
 int MI_FAILURE ; 
 int FUNC0 () ; 
 scalar_t__ MI_SUCCESS ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SMI_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  backlog ; 
 int /*<<< orphan*/ * conn ; 
 int /*<<< orphan*/  dbg ; 
 int /*<<< orphan*/  mi_clean_signals ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* smfi ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout ; 

int
FUNC6()
{
	int r;

	(void) FUNC4(SIGPIPE, SIG_IGN);
	if (conn == NULL)
	{
		FUNC5(SMI_LOG_FATAL, "%s: missing connection information",
			smfi->xxfi_name);
		return MI_FAILURE;
	}

	(void) FUNC1(mi_clean_signals);
	if (FUNC2(smfi->xxfi_name) != MI_SUCCESS)
	{
		FUNC5(SMI_LOG_FATAL,
			"%s: Couldn't start signal thread",
			smfi->xxfi_name);
		return MI_FAILURE;
	}
	r = FUNC0();

	/* Startup the listener */
	if (FUNC3(conn, dbg, smfi, timeout, backlog) != MI_SUCCESS)
		r = MI_FAILURE;

	return r;
}