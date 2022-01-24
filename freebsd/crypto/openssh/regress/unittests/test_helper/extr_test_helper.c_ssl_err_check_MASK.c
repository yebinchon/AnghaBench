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
 char* FUNC0 (long,int /*<<< orphan*/ *) ; 
 long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,int,char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4(const char *file, int line)
{
	long openssl_error = FUNC1();

	if (openssl_error == 0)
		return;

	FUNC3(stderr, "\n%s:%d: uncaught OpenSSL error: %s",
	    file, line, FUNC0(openssl_error, NULL));
	FUNC2();
}