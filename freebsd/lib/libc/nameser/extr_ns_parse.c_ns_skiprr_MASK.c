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
typedef  scalar_t__ ns_sect ;

/* Variables and functions */
 int /*<<< orphan*/  EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/  const*) ; 
 int NS_INT16SZ ; 
 int NS_INT32SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ ns_s_qd ; 

int
FUNC3(const u_char *ptr, const u_char *eom, ns_sect section, int count) {
	const u_char *optr = ptr;

	for ((void)NULL; count > 0; count--) {
		int b, rdlength;

		b = FUNC2(ptr, eom);
		if (b < 0)
			FUNC1(EMSGSIZE);
		ptr += b/*Name*/ + NS_INT16SZ/*Type*/ + NS_INT16SZ/*Class*/;
		if (section != ns_s_qd) {
			if (ptr + NS_INT32SZ + NS_INT16SZ > eom)
				FUNC1(EMSGSIZE);
			ptr += NS_INT32SZ/*TTL*/;
			FUNC0(rdlength, ptr);
			ptr += rdlength/*RData*/;
		}
	}
	if (ptr > eom)
		FUNC1(EMSGSIZE);
	return (ptr - optr);
}