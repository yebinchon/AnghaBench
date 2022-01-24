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
typedef  int /*<<< orphan*/  umad_ca_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 

int FUNC5(const char *ca_name, umad_ca_t * ca)
{
	int r;

	FUNC1("ca_name %s", ca_name);
	if (!(ca_name = FUNC4(ca_name, NULL)))
		return -ENODEV;

	if (FUNC2(ca_name, ca) > 0)
		return 0;

	if ((r = FUNC3(ca_name, ca)) < 0)
		return r;

	FUNC0("opened %s", ca_name);
	return 0;
}