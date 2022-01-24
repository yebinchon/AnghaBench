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
struct TYPE_3__ {scalar_t__ c_status; int /*<<< orphan*/ * c_ssh; scalar_t__ c_keytype; int /*<<< orphan*/ * c_data; int /*<<< orphan*/ * c_output_name; int /*<<< orphan*/ * c_namebase; } ;

/* Variables and functions */
 scalar_t__ CS_KEYS ; 
 scalar_t__ CS_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_link ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_1__* fdcon ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int maxfd ; 
 int /*<<< orphan*/  ncon ; 
 int /*<<< orphan*/  read_wait ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tq ; 

__attribute__((used)) static void
FUNC6(int s)
{
	if (s >= maxfd || fdcon[s].c_status == CS_UNUSED)
		FUNC3("confree: attempt to free bad fdno %d", s);
	FUNC4(fdcon[s].c_namebase);
	FUNC4(fdcon[s].c_output_name);
	if (fdcon[s].c_status == CS_KEYS)
		FUNC4(fdcon[s].c_data);
	fdcon[s].c_status = CS_UNUSED;
	fdcon[s].c_keytype = 0;
	if (fdcon[s].c_ssh) {
		FUNC5(fdcon[s].c_ssh);
		FUNC4(fdcon[s].c_ssh);
		fdcon[s].c_ssh = NULL;
	} else
		FUNC2(s);
	FUNC1(&tq, &fdcon[s], c_link);
	FUNC0(s, read_wait);
	ncon--;
}