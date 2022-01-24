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
typedef  int u_char ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 char* FUNC2 (int,size_t) ; 
 char* FUNC3 (char*) ; 

char *
FUNC4(const void *vp, size_t l)
{
	const u_char *p = (const u_char *)vp;
	char b[3], *r;
	size_t i, hl;

	if (l > 65536)
		return FUNC3("tohex: length > 65536");

	hl = l * 2 + 1;
	r = FUNC2(1, hl);
	for (i = 0; i < l; i++) {
		FUNC0(b, sizeof(b), "%02x", p[i]);
		FUNC1(r, b, hl);
	}
	return (r);
}