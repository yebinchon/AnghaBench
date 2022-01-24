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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ OPENSSL_VERSION_NUMBER ; 
 int RANDOM_SEED_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,char,int) ; 
 int FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC8(void)
{
#ifndef OPENSSL_PRNG_ONLY
	unsigned char buf[RANDOM_SEED_SIZE];
#endif
	if (!FUNC7(OPENSSL_VERSION_NUMBER, FUNC2()))
		FUNC4("OpenSSL version mismatch. Built against %lx, you "
		    "have %lx", (u_long)OPENSSL_VERSION_NUMBER, FUNC2());

#ifndef OPENSSL_PRNG_ONLY
	if (FUNC1() == 1) {
		FUNC3("RNG is ready, skipping seeding");
		return;
	}

	if (FUNC6(buf, sizeof(buf)) == -1)
		FUNC4("Could not obtain seed from PRNGd");
	FUNC0(buf, sizeof(buf), sizeof(buf));
	FUNC5(buf, '\0', sizeof(buf));

#endif /* OPENSSL_PRNG_ONLY */
	if (FUNC1() != 1)
		FUNC4("PRNG is not seeded");
}