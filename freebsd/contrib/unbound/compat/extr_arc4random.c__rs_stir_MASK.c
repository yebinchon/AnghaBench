#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  rnd ;
struct TYPE_4__ {int rs_count; scalar_t__ rs_have; } ;
struct TYPE_3__ {int /*<<< orphan*/  rs_buf; } ;

/* Variables and functions */
 scalar_t__ ENOSYS ; 
 int IVSZ ; 
 int KEYSZ ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__* rs ; 
 TYPE_1__* rsx ; 

__attribute__((used)) static void
FUNC8(void)
{
	u_char rnd[KEYSZ + IVSZ];

	if (FUNC5(rnd, sizeof rnd) == -1) {
		if(errno != ENOSYS ||
			FUNC4(rnd, sizeof rnd) == -1) {
#ifdef SIGKILL
			raise(SIGKILL);
#else
			FUNC2(9); /* windows */
#endif
		}
	}

	if (!rs)
		FUNC0(rnd, sizeof(rnd));
	else
		FUNC1(rnd, sizeof(rnd));
	FUNC3(rnd, sizeof(rnd));	/* discard source seed */

	/* invalidate rs_buf */
	rs->rs_have = 0;
	FUNC6(rsx->rs_buf, 0, sizeof(rsx->rs_buf));

	rs->rs_count = 1600000;
}