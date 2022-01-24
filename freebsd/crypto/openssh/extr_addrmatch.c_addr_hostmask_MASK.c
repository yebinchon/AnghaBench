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
typedef  int /*<<< orphan*/  u_int ;
struct xaddr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct xaddr*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct xaddr*) ; 

__attribute__((used)) static int
FUNC2(int af, u_int l, struct xaddr *n)
{
	if (FUNC1(af, l, n) == -1 || FUNC0(n) == -1)
		return (-1);
	return (0);
}