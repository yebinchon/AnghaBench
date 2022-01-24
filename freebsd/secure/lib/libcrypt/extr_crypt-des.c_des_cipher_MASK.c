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
typedef  int /*<<< orphan*/  u_long ;
typedef  void* u_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  des_initialised ; 
 int FUNC1 (void*,void*,void**,void**,int) ; 
 void* FUNC2 (void*) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(const char *in, char *out, u_long salt, int count)
{
	u_int32_t	l_out, r_out, rawl, rawr;
	int		retval;
	union {
		u_int32_t	*ui32;
		const char	*c;
	} trans;

	if (!des_initialised)
		FUNC0();

	FUNC4(salt);

	trans.c = in;
	rawl = FUNC3(*trans.ui32++);
	rawr = FUNC3(*trans.ui32);

	retval = FUNC1(rawl, rawr, &l_out, &r_out, count);

	trans.c = out;
	*trans.ui32++ = FUNC2(l_out);
	*trans.ui32 = FUNC2(r_out);
	return(retval);
}