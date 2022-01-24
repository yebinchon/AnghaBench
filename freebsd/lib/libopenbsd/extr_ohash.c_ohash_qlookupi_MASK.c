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
typedef  int /*<<< orphan*/  uint32_t ;
struct ohash {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const**) ; 
 unsigned int FUNC1 (struct ohash*,char const*,char const*,int /*<<< orphan*/ ) ; 

unsigned int
FUNC2(struct ohash *h, const char *s, const char **e)
{
	uint32_t hv;

	hv = FUNC0(s, e);
	return FUNC1(h, s, *e, hv);
}