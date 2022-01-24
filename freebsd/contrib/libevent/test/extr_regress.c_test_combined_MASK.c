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
typedef  int /*<<< orphan*/  w2 ;
typedef  int /*<<< orphan*/  w1 ;
struct both {int nread; int /*<<< orphan*/  ev; } ;
typedef  int /*<<< orphan*/  r2 ;
typedef  int /*<<< orphan*/  r1 ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  combined_read_cb ; 
 int /*<<< orphan*/  combined_write_cb ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct both*) ; 
 int /*<<< orphan*/  FUNC4 (struct both*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * pair ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(void)
{
	struct both r1, r2, w1, w2;

	FUNC5("Combined read/write: ");
	FUNC4(&r1, 0, sizeof(r1));
	FUNC4(&r2, 0, sizeof(r2));
	FUNC4(&w1, 0, sizeof(w1));
	FUNC4(&w2, 0, sizeof(w2));

	w1.nread = 4096;
	w2.nread = 8192;

	FUNC3(&r1.ev, pair[0], EV_READ, combined_read_cb, &r1);
	FUNC3(&w1.ev, pair[0], EV_WRITE, combined_write_cb, &w1);
	FUNC3(&r2.ev, pair[1], EV_READ, combined_read_cb, &r2);
	FUNC3(&w2.ev, pair[1], EV_WRITE, combined_write_cb, &w2);
	FUNC6(FUNC1(&r1.ev, NULL) != -1);
	FUNC6(!FUNC1(&w1.ev, NULL));
	FUNC6(!FUNC1(&r2.ev, NULL));
	FUNC6(!FUNC1(&w2.ev, NULL));
	FUNC2();

	if (r1.nread == 8192 && r2.nread == 4096)
		test_ok = 1;

end:
	FUNC0();
}