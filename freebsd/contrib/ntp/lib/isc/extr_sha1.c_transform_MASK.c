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
typedef  scalar_t__ isc_uint32_t ;
typedef  int /*<<< orphan*/  CHAR64LONG16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char const*,int) ; 

__attribute__((used)) static void
FUNC12(isc_uint32_t state[5], const unsigned char buffer[64]) {
	isc_uint32_t a, b, c, d, e;
	CHAR64LONG16 *block;
	CHAR64LONG16 workspace;

	FUNC0(buffer != NULL);
	FUNC0(state != NULL);

	block = &workspace;
	(void)FUNC11(block, buffer, 64);

	/* Copy context->state[] to working vars */
	a = state[0];
	b = state[1];
	c = state[2];
	d = state[3];
	e = state[4];

#ifdef __sparc_v9__
	do_R01(&a, &b, &c, &d, &e, block);
	do_R2(&a, &b, &c, &d, &e, block);
	do_R3(&a, &b, &c, &d, &e, block);
	do_R4(&a, &b, &c, &d, &e, block);
#else
	/* 4 rounds of 20 operations each. Loop unrolled. */
	FUNC2(a,b,c,d,e, 0); FUNC2(e,a,b,c,d, 1); FUNC2(d,e,a,b,c, 2); FUNC2(c,d,e,a,b, 3);
	FUNC2(b,c,d,e,a, 4); FUNC2(a,b,c,d,e, 5); FUNC2(e,a,b,c,d, 6); FUNC2(d,e,a,b,c, 7);
	FUNC2(c,d,e,a,b, 8); FUNC2(b,c,d,e,a, 9); FUNC2(a,b,c,d,e,10); FUNC2(e,a,b,c,d,11);
	FUNC2(d,e,a,b,c,12); FUNC2(c,d,e,a,b,13); FUNC2(b,c,d,e,a,14); FUNC2(a,b,c,d,e,15);
	FUNC3(e,a,b,c,d,16); FUNC3(d,e,a,b,c,17); FUNC3(c,d,e,a,b,18); FUNC3(b,c,d,e,a,19);
	FUNC4(a,b,c,d,e,20); FUNC4(e,a,b,c,d,21); FUNC4(d,e,a,b,c,22); FUNC4(c,d,e,a,b,23);
	FUNC4(b,c,d,e,a,24); FUNC4(a,b,c,d,e,25); FUNC4(e,a,b,c,d,26); FUNC4(d,e,a,b,c,27);
	FUNC4(c,d,e,a,b,28); FUNC4(b,c,d,e,a,29); FUNC4(a,b,c,d,e,30); FUNC4(e,a,b,c,d,31);
	FUNC4(d,e,a,b,c,32); FUNC4(c,d,e,a,b,33); FUNC4(b,c,d,e,a,34); FUNC4(a,b,c,d,e,35);
	FUNC4(e,a,b,c,d,36); FUNC4(d,e,a,b,c,37); FUNC4(c,d,e,a,b,38); FUNC4(b,c,d,e,a,39);
	FUNC5(a,b,c,d,e,40); FUNC5(e,a,b,c,d,41); FUNC5(d,e,a,b,c,42); FUNC5(c,d,e,a,b,43);
	FUNC5(b,c,d,e,a,44); FUNC5(a,b,c,d,e,45); FUNC5(e,a,b,c,d,46); FUNC5(d,e,a,b,c,47);
	FUNC5(c,d,e,a,b,48); FUNC5(b,c,d,e,a,49); FUNC5(a,b,c,d,e,50); FUNC5(e,a,b,c,d,51);
	FUNC5(d,e,a,b,c,52); FUNC5(c,d,e,a,b,53); FUNC5(b,c,d,e,a,54); FUNC5(a,b,c,d,e,55);
	FUNC5(e,a,b,c,d,56); FUNC5(d,e,a,b,c,57); FUNC5(c,d,e,a,b,58); FUNC5(b,c,d,e,a,59);
	FUNC6(a,b,c,d,e,60); FUNC6(e,a,b,c,d,61); FUNC6(d,e,a,b,c,62); FUNC6(c,d,e,a,b,63);
	FUNC6(b,c,d,e,a,64); FUNC6(a,b,c,d,e,65); FUNC6(e,a,b,c,d,66); FUNC6(d,e,a,b,c,67);
	FUNC6(c,d,e,a,b,68); FUNC6(b,c,d,e,a,69); FUNC6(a,b,c,d,e,70); FUNC6(e,a,b,c,d,71);
	FUNC6(d,e,a,b,c,72); FUNC6(c,d,e,a,b,73); FUNC6(b,c,d,e,a,74); FUNC6(a,b,c,d,e,75);
	FUNC6(e,a,b,c,d,76); FUNC6(d,e,a,b,c,77); FUNC6(c,d,e,a,b,78); FUNC6(b,c,d,e,a,79);
#endif

	/* Add the working vars back into context.state[] */
	state[0] += a;
	state[1] += b;
	state[2] += c;
	state[3] += d;
	state[4] += e;

	/* Wipe variables */
	a = b = c = d = e = 0;
	/* Avoid compiler warnings */
	FUNC1(a); FUNC1(b); FUNC1(c); FUNC1(d); FUNC1(e);
}