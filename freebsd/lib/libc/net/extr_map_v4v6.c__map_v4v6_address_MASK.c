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
 int /*<<< orphan*/  NS_INADDRSZ ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

void
FUNC2(const char *src, char *dst)
{
	/* Our caller may update in place. */
	FUNC0(&dst[12], src, NS_INADDRSZ);
	/* Mark this ipv6 addr as a mapped ipv4. */
	FUNC1(&dst[10], 0xff, 2);
	FUNC1(&dst[0], 0, 10);
}