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
typedef  scalar_t__ u_int8_t ;
typedef  int /*<<< orphan*/  a2 ;
typedef  int /*<<< orphan*/  a1 ;

/* Variables and functions */
 scalar_t__ PF_OP_EQ ; 
 scalar_t__ PF_OP_NE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,unsigned int) ; 

void
FUNC3(u_int8_t op, unsigned u1, unsigned u2, const char *t, unsigned umax)
{
	char	a1[11], a2[11];

	FUNC2(a1, sizeof(a1), "%u", u1);
	FUNC2(a2, sizeof(a2), "%u", u2);
	FUNC1(" %s", t);
	if (u1 == umax && (op == PF_OP_EQ || op == PF_OP_NE))
		FUNC0(op, "unknown", a2);
	else
		FUNC0(op, a1, a2);
}