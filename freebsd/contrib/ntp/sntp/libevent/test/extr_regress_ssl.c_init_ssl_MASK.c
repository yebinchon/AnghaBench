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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ OPENSSL_VERSION_NUMBER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	FUNC3();
	FUNC0();
	FUNC4();
	FUNC1();
	if (FUNC2() != OPENSSL_VERSION_NUMBER) {
		FUNC5("WARN", ("Version mismatch for openssl: compiled with %lx but running with %lx", (unsigned long)OPENSSL_VERSION_NUMBER, (unsigned long) FUNC2()));
	}
}