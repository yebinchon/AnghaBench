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
typedef  size_t u_int32_t ;
struct sshbuf {int dummy; } ;
typedef  struct sshbuf u_char ;
typedef  int /*<<< orphan*/  r ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sshbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (size_t,size_t) ; 
 size_t NUM_FUZZ_TESTS ; 
 int SSHBUF_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (size_t*,int) ; 
 int FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct sshbuf*,int,size_t) ; 
 size_t FUNC14 (struct sshbuf*) ; 
 int FUNC15 (struct sshbuf*,size_t) ; 
 int FUNC16 (struct sshbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct sshbuf*) ; 
 size_t FUNC18 (struct sshbuf*) ; 
 size_t FUNC19 (struct sshbuf*) ; 
 struct sshbuf* FUNC20 () ; 
 struct sshbuf* FUNC21 (struct sshbuf*) ; 
 int FUNC22 (struct sshbuf*,size_t,struct sshbuf**) ; 
 scalar_t__ FUNC23 (struct sshbuf*,int) ; 
 int FUNC24 (struct sshbuf*,size_t) ; 

void
FUNC25(void)
{
	struct sshbuf *p1;
	u_char *dp;
	size_t sz, sz2, i;
	u_int32_t r;
	int ret;

	/* NB. uses sshbuf internals */
	FUNC9("fuzz alloc/dealloc");
	p1 = FUNC20();
	FUNC0(FUNC23(p1, 16 * 1024), 0);
	FUNC3(p1, NULL);
	FUNC3(FUNC21(p1), NULL);
	FUNC1(FUNC21(p1), FUNC18(p1));
	for (i = 0; i < NUM_FUZZ_TESTS; i++) {
		r = FUNC12(10);
		if (r == 0) {
			/* 10% chance: small reserve */
			r = FUNC12(10);
 fuzz_reserve:
			sz = FUNC14(p1);
			sz2 = FUNC18(p1);
			ret = FUNC22(p1, r, &dp);
			if (ret < 0) {
				FUNC2(dp, NULL);
				FUNC7(sz, r);
				FUNC4(FUNC14(p1), sz);
				FUNC4(FUNC18(p1), sz2);
			} else {
				FUNC3(dp, NULL);
				FUNC5(sz, r);
				FUNC4(FUNC14(p1), sz - r);
				FUNC4(FUNC18(p1), sz2 + r);
				FUNC13(dp, FUNC12(255) + 1, r);
			}
		} else if (r < 3) {
			/* 20% chance: big reserve */
			r = FUNC12(8 * 1024);
			goto fuzz_reserve;
		} else if (r == 3) {
			/* 10% chance: small consume */
			r = FUNC12(10);
 fuzz_consume:
			sz = FUNC14(p1);
			sz2 = FUNC18(p1);
			/* 50% change consume from end, otherwise start */
			ret = ((FUNC10() & 1) ?
			    sshbuf_consume : sshbuf_consume_end)(p1, r);
			if (ret < 0) {
				FUNC7(sz2, r);
				FUNC4(FUNC14(p1), sz);
				FUNC4(FUNC18(p1), sz2);
			} else {
				FUNC5(sz2, r);
				FUNC4(FUNC14(p1), sz + r);
				FUNC4(FUNC18(p1), sz2 - r);
			}
		} else if (r < 8) {
			/* 40% chance: big consume */
			r = FUNC12(2 * 1024);
			goto fuzz_consume;
		} else if (r == 8) {
			/* 10% chance: reset max size */
			r = FUNC12(16 * 1024);
			sz = FUNC19(p1);
			if (FUNC23(p1, r) < 0)
				FUNC4(FUNC19(p1), sz);
			else
				FUNC4(FUNC19(p1), r);
		} else {
			if (FUNC12(8192) == 0) {
				/* tiny chance: new buffer */
				FUNC3(FUNC21(p1), NULL);
				FUNC1(FUNC21(p1), FUNC18(p1));
				FUNC17(p1);
				p1 = FUNC20();
				FUNC3(p1, NULL);
				FUNC0(FUNC23(p1,
				    16 * 1024), 0);
			} else {
				/* Almost 10%: giant reserve */
				/* use arc4random_buf for r > 2^32 on 64 bit */
				FUNC11(&r, sizeof(r));
				while (r < SSHBUF_SIZE_MAX / 2) {
					r <<= 1;
					r |= FUNC10() & 1;
				}
				goto fuzz_reserve;
			}
		}
		FUNC3(FUNC21(p1), NULL);
		FUNC6(FUNC19(p1), 16 * 1024);
	}
	FUNC3(FUNC21(p1), NULL);
	FUNC1(FUNC21(p1), FUNC18(p1));
	FUNC17(p1);
	FUNC8();
}