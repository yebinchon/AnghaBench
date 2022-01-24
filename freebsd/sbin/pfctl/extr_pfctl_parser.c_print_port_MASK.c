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
typedef  int u_int16_t ;
struct servent {char* s_name; } ;
typedef  int /*<<< orphan*/  a2 ;
typedef  int /*<<< orphan*/  a1 ;

/* Variables and functions */
 scalar_t__ PF_OP_EQ ; 
 scalar_t__ PF_OP_NE ; 
 struct servent* FUNC0 (int,char const*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

void
FUNC5(u_int8_t op, u_int16_t p1, u_int16_t p2, const char *proto, int numeric)
{
	char		 a1[6], a2[6];
	struct servent	*s;

	if (!numeric)
		s = FUNC0(p1, proto);
	else
		s = NULL;
	p1 = FUNC1(p1);
	p2 = FUNC1(p2);
	FUNC4(a1, sizeof(a1), "%u", p1);
	FUNC4(a2, sizeof(a2), "%u", p2);
	FUNC3(" port");
	if (s != NULL && (op == PF_OP_EQ || op == PF_OP_NE))
		FUNC2(op, s->s_name, a2);
	else
		FUNC2(op, a1, a2);
}