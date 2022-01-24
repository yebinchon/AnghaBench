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

/* Variables and functions */
 int NS_MAXCDNAME ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 

int
FUNC2(const char *src, u_char *dst, size_t dstsiz,
		 const u_char **dnptrs, const u_char **lastdnptr)
{
	u_char tmp[NS_MAXCDNAME];

	if (FUNC1(src, tmp, sizeof tmp) == -1)
		return (-1);
	return (FUNC0(tmp, dst, dstsiz, dnptrs, lastdnptr));
}