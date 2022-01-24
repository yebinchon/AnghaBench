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
typedef  int /*<<< orphan*/  bitstr_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 

__attribute__((used)) static void
FUNC14(FILE *file, const int test_length)
{
	int i;
	bitstr_t *bs;

	FUNC2(test_length >= 4);

	(void) FUNC11(file, "Testing with TEST_LENGTH = %d\n\n", test_length);

	(void) FUNC11(file, "test _bit_byte, _bit_mask, and bitstr_size\n");
	(void) FUNC11(file, "  i   _bit_byte(i)   _bit_mask(i) bitstr_size(i)\n");

	for (i=0; i < test_length; i++) {
		(void) FUNC11(file, "%3d%15u%15u%15zu\n",
			i, FUNC0(i), FUNC1(i), FUNC9(i));
	}

	bs = FUNC3(test_length);
	FUNC10(bs, test_length);
	(void) FUNC11(file, "\ntest bit_alloc, clearbits, bit_ffc, bit_ffs\n");
	(void) FUNC11(file, "be:   0  -1 ");
	for (i=0; i < test_length; i++)
		(void) FUNC11(file, "%c", '0');
	(void) FUNC11(file, "\nis: ");
	FUNC13(file, bs, test_length);

	(void) FUNC11(file, "\ntest bit_set\n");
	for (i=0; i < test_length; i+=3)
		FUNC7(bs, i);
	(void) FUNC11(file, "be:   1   0 ");
	for (i=0; i < test_length; i++)
		(void) FUNC11(file, "%c", "100"[i % 3]);
	(void) FUNC11(file, "\nis: ");
	FUNC13(file, bs, test_length);

	(void) FUNC11(file, "\ntest bit_clear\n");
	for (i=0; i < test_length; i+=6)
		FUNC4(bs, i);
	(void) FUNC11(file, "be:   0   3 ");
	for (i=0; i < test_length; i++)
		(void) FUNC11(file, "%c", "000100"[i % 6]);
	(void) FUNC11(file, "\nis: ");
	FUNC13(file, bs, test_length);

	(void) FUNC11(file, "\ntest bit_test using previous bitstring\n");
	(void) FUNC11(file, "  i    bit_test(i)\n");
	for (i=0; i < test_length; i++)
		(void) FUNC11(file, "%3d%15d\n", i, FUNC8(bs, i));

	FUNC10(bs, test_length);
	(void) FUNC11(file, "\ntest clearbits\n");
	(void) FUNC11(file, "be:   0  -1 ");
	for (i=0; i < test_length; i++)
		(void) FUNC11(file, "%c", '0');
	(void) FUNC11(file, "\nis: ");
	FUNC13(file, bs, test_length);

	(void) FUNC11(file, "\ntest bit_nset and bit_nclear\n");
	FUNC6(bs, 1, test_length - 2);
	(void) FUNC11(file, "be:   0   1 0");
	for (i=0; i < test_length - 2; i++)
		(void) FUNC11(file, "%c", '1');
	(void) FUNC11(file, "0\nis: ");
	FUNC13(file, bs, test_length);

	FUNC5(bs, 2, test_length - 3);
	(void) FUNC11(file, "be:   0   1 01");
	for (i=0; i < test_length - 4; i++)
		(void) FUNC11(file, "%c", '0');
	(void) FUNC11(file, "10\nis: ");
	FUNC13(file, bs, test_length);

	FUNC5(bs, 0, test_length - 1);
	(void) FUNC11(file, "be:   0  -1 ");
	for (i=0; i < test_length; i++)
		(void) FUNC11(file, "%c", '0');
	(void) FUNC11(file, "\nis: ");
	FUNC13(file, bs, test_length);
	FUNC6(bs, 0, test_length - 2);
	(void) FUNC11(file, "be: %3d   0 ",test_length - 1);
	for (i=0; i < test_length - 1; i++)
		(void) FUNC11(file, "%c", '1');
	FUNC11(file, "%c", '0');
	(void) FUNC11(file, "\nis: ");
	FUNC13(file, bs, test_length);
	FUNC5(bs, 0, test_length - 1);
	(void) FUNC11(file, "be:   0  -1 ");
	for (i=0; i < test_length; i++)
		(void) FUNC11(file, "%c", '0');
	(void) FUNC11(file, "\nis: ");
	FUNC13(file, bs, test_length);

	(void) FUNC11(file, "\n");
	(void) FUNC11(file, "first 1 bit should move right 1 position each line\n");
	for (i=0; i < test_length; i++) {
		FUNC5(bs, 0, test_length - 1);
		FUNC6(bs, i, test_length - 1);
		(void) FUNC11(file, "%3d ", i); FUNC13(file, bs, test_length);
	}

	(void) FUNC11(file, "\n");
	(void) FUNC11(file, "first 0 bit should move right 1 position each line\n");
	for (i=0; i < test_length; i++) {
		FUNC6(bs, 0, test_length - 1);
		FUNC5(bs, i, test_length - 1);
		(void) FUNC11(file, "%3d ", i); FUNC13(file, bs, test_length);
	}

	(void) FUNC11(file, "\n");
	(void) FUNC11(file, "first 0 bit should move left 1 position each line\n");
	for (i=0; i < test_length; i++) {
		FUNC5(bs, 0, test_length - 1);
		FUNC6(bs, 0, test_length - 1 - i);
		(void) FUNC11(file, "%3d ", i); FUNC13(file, bs, test_length);
	}

	(void) FUNC11(file, "\n");
	(void) FUNC11(file, "first 1 bit should move left 1 position each line\n");
	for (i=0; i < test_length; i++) {
		FUNC6(bs, 0, test_length - 1);
		FUNC5(bs, 0, test_length - 1 - i);
		(void) FUNC11(file, "%3d ", i); FUNC13(file, bs, test_length);
	}

	(void) FUNC11(file, "\n");
	(void) FUNC11(file, "0 bit should move right 1 position each line\n");
	for (i=0; i < test_length; i++) {
		FUNC6(bs, 0, test_length - 1);
		FUNC5(bs, i, i);
		(void) FUNC11(file, "%3d ", i); FUNC13(file, bs, test_length);
	}

	(void) FUNC11(file, "\n");
	(void) FUNC11(file, "1 bit should move right 1 position each line\n");
	for (i=0; i < test_length; i++) {
		FUNC5(bs, 0, test_length - 1);
		FUNC6(bs, i, i);
		(void) FUNC11(file, "%3d ", i); FUNC13(file, bs, test_length);
	}

	(void) FUNC12(bs);
}