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
struct bitmap {int dummy; } ;
typedef  int /*<<< orphan*/  bbuf ;
typedef  struct bitmap BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct bitmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct bitmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC7 (struct bitmap*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bitmap*) ; 
 int FUNC9 (struct bitmap*,int) ; 
 struct bitmap* FUNC10 () ; 
 int FUNC11 (struct bitmap*) ; 
 int FUNC12 (struct bitmap*) ; 
 int FUNC13 (struct bitmap*,int) ; 
 int NTESTS ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct bitmap*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct bitmap*) ; 
 int FUNC18 (struct bitmap*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC19 (struct bitmap*) ; 
 size_t FUNC20 (struct bitmap*) ; 
 struct bitmap* FUNC21 () ; 
 int FUNC22 (struct bitmap*,int) ; 
 int FUNC23 (struct bitmap*,int) ; 
 int FUNC24 (struct bitmap*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC25 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC27 (char*,int,int,int) ; 

void
FUNC28(void)
{
	struct bitmap *b;
	BIGNUM *bn;
	size_t len;
	int i, j, k, n;
	u_char bbuf[1024], bnbuf[1024];
	int r;

	FUNC15("bitmap_new");
	b = FUNC21();
	FUNC3(b, NULL);
	bn = FUNC10();
	FUNC3(bn, NULL);
	FUNC14();

	FUNC15("bitmap_set_bit / bitmap_test_bit");
	for (i = -1; i < NTESTS; i++) {
		for (j = -1; j < NTESTS; j++) {
			for (k = -1; k < NTESTS; k++) {
				FUNC25(b);
				FUNC6(bn);

				FUNC27("set %d/%d/%d", i, j, k);
				/* Set bits */
				if (i >= 0) {
					FUNC0(FUNC22(b, i), 0);
					FUNC0(FUNC13(bn, i), 1);
				}
				if (j >= 0) {
					FUNC0(FUNC22(b, j), 0);
					FUNC0(FUNC13(bn, j), 1);
				}
				if (k >= 0) {
					FUNC0(FUNC22(b, k), 0);
					FUNC0(FUNC13(bn, k), 1);
				}

				/* Check perfect match between bitmap and bn */
				FUNC27("match %d/%d/%d", i, j, k);
				for (n = 0; n < NTESTS; n++) {
					FUNC0(FUNC9(bn, n),
					    FUNC23(b, n));
				}

				/* Test length calculations */
				FUNC27("length %d/%d/%d", i, j, k);
				FUNC0(FUNC11(bn),
				    (int)FUNC19(b));
				FUNC0(FUNC12(bn),
				    (int)FUNC20(b));

				/* Test serialisation */
				FUNC27("serialise %d/%d/%d",
				    i, j, k);
				len = FUNC20(b);
				FUNC26(bbuf, 0xfc, sizeof(bbuf));
				FUNC0(FUNC24(b, bbuf,
				    sizeof(bbuf)), 0);
				for (n = len; n < (int)sizeof(bbuf); n++)
					FUNC4(bbuf[n], 0xfc);
				r = FUNC5(bn, bnbuf);
				FUNC1(r, 0);
				FUNC0(r, (int)len);
				FUNC2(bbuf, bnbuf, len);

				/* Test deserialisation */
				FUNC27("deserialise %d/%d/%d",
				    i, j, k);
				FUNC25(b);
				FUNC0(FUNC18(b, bnbuf,
				    len), 0);
				for (n = 0; n < NTESTS; n++) {
					FUNC0(FUNC9(bn, n),
					    FUNC23(b, n));
				}

				/* Test clearing bits */
				FUNC27("clear %d/%d/%d",
				    i, j, k);
				for (n = 0; n < NTESTS; n++) {
					FUNC0(FUNC22(b, n), 0);
					FUNC0(FUNC13(bn, n), 1);
				}
				if (i >= 0) {
					FUNC16(b, i);
					FUNC7(bn, i);
				}
				if (j >= 0) {
					FUNC16(b, j);
					FUNC7(bn, j);
				}
				if (k >= 0) {
					FUNC16(b, k);
					FUNC7(bn, k);
				}
				for (n = 0; n < NTESTS; n++) {
					FUNC0(FUNC9(bn, n),
					    FUNC23(b, n));
				}
			}
		}
	}
	FUNC17(b);
	FUNC8(bn);
	FUNC14();
}