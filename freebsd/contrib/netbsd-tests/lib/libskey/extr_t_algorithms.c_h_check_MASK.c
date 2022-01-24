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
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(const char *pass, const char *seed,
        const char *algo, const char *zero,
        const char *one,  const char *nine)
{
	char prn[64];
	char data[16];
	int i;

	FUNC4(algo);

	FUNC3(data, seed, pass);
	FUNC1(prn, data);
	FUNC0(prn, zero);

	FUNC2(data);
	FUNC1(prn, data);
	FUNC0(prn, one);

	for(i = 1; i < 99; ++i)
		FUNC2(data);
	FUNC1(prn, data);
	FUNC0(prn, nine);
}