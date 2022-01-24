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
struct hostkeys {int /*<<< orphan*/ * entries; } ;

/* Variables and functions */
 struct hostkeys* FUNC0 (int,int) ; 

struct hostkeys *
FUNC1(void)
{
	struct hostkeys *ret = FUNC0(1, sizeof(*ret));

	ret->entries = NULL;
	return ret;
}