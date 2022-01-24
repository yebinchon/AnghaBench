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
typedef  int u_int ;

/* Variables and functions */
 int PROTO_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int*,int*) ; 
 int FUNC2 (char const*,char*,int*,int*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 

int
FUNC5(const char *name, int *port1, int *port2, int *proto)
{
	u_int p1, p2;
	char *off, *cpy;
	int save_proto;

	if (FUNC2(name, "%d-%d", &p1, &p2) != 2) {
		if ((cpy = FUNC4(name)) == NULL)
			return 0;

		if ((off = FUNC3(cpy, '-')) == NULL) {
			FUNC0(cpy);
			return 0;
		}

		*off = '\0';

		if (FUNC1(cpy, port1, proto) == 0) {
			FUNC0(cpy);
			return 0;
		}
		save_proto = *proto;

		if (FUNC1(off + 1, port2, proto) == 0) {
			FUNC0(cpy);
			return 0;
		}
		FUNC0(cpy);

		if (*proto != save_proto)
			*proto = PROTO_UNDEF;
	} else {
		*port1 = p1;
		*port2 = p2;
		*proto = PROTO_UNDEF;
	}

	return 1;
}