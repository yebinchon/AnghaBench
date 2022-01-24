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
 int FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 

int
FUNC2(const u_char *msg, const u_char *eom, const u_char *src,
		   char *dst, size_t dstsiz)
{
	u_char tmp[NS_MAXCDNAME];
	int n;
	
	if ((n = FUNC1(msg, eom, src, tmp, sizeof tmp)) == -1)
		return (-1);
	if (FUNC0(tmp, dst, dstsiz) == -1)
		return (-1);
	return (n);
}