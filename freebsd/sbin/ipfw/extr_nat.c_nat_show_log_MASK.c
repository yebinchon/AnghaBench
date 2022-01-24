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
struct nat44_cfg_nat {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC1(struct nat44_cfg_nat *n, void *arg)
{
	char *buf;

	buf = (char *)(n + 1);
	if (buf[0] != '\0')
		FUNC0("nat %s: %s\n", n->name, buf);
}