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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  rnd ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int IVSZ ; 
 int KEYSZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  RSBUFSZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs_buf ; 
 int rs_count ; 
 scalar_t__ rs_have ; 
 int rs_initialized ; 

__attribute__((used)) static void
FUNC8(void)
{
	u_char rnd[KEYSZ + IVSZ];

#ifdef WITH_OPENSSL
	if (RAND_bytes(rnd, sizeof(rnd)) <= 0)
		fatal("Couldn't obtain random bytes (error 0x%lx)",
		    (unsigned long)ERR_get_error());
#else
	FUNC6(rnd, sizeof(rnd));
#endif

	if (!rs_initialized) {
		rs_initialized = 1;
		FUNC2(rnd, sizeof(rnd));
	} else
		FUNC3(rnd, sizeof(rnd));
	FUNC4(rnd, sizeof(rnd));

	/* invalidate rs_buf */
	rs_have = 0;
	FUNC7(rs_buf, 0, RSBUFSZ);

	rs_count = 1600000;
}