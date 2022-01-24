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
typedef  char u_char ;
struct sshkey {int dummy; } ;
struct fuzz {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int FUZZ_1_BIT_FLIP ; 
 int FUZZ_1_BYTE_FLIP ; 
 int FUZZ_2_BYTE_FLIP ; 
 int FUZZ_TRUNCATE_END ; 
 int FUZZ_TRUNCATE_START ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fuzz*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct fuzz* FUNC5 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct fuzz*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuzz*) ; 
 size_t FUNC8 (struct fuzz*) ; 
 scalar_t__ FUNC9 (struct fuzz*) ; 
 int /*<<< orphan*/  FUNC10 (struct fuzz*) ; 
 char* FUNC11 (struct fuzz*) ; 
 int /*<<< orphan*/  onerror ; 
 int /*<<< orphan*/  FUNC12 (struct sshkey*,char**,size_t*,char*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sshkey*,char*,size_t,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct sshkey *k, const char *sig_alg)
{
	struct fuzz *fuzz;
	u_char *sig, c[] = "some junk to be signed";
	size_t l;

	FUNC0(FUNC12(k, &sig, &l, c, sizeof(c), sig_alg, 0), 0);
	FUNC2(l, 0);
	fuzz = FUNC5(FUZZ_1_BIT_FLIP | /* too slow FUZZ_2_BIT_FLIP | */
	    FUZZ_1_BYTE_FLIP | FUZZ_2_BYTE_FLIP |
	    FUZZ_TRUNCATE_START | FUZZ_TRUNCATE_END, sig, l);
	FUNC0(FUNC13(k, sig, l, c, sizeof(c), NULL, 0), 0);
	FUNC4(sig);
	FUNC3(onerror, fuzz);
	for(; !FUNC7(fuzz); FUNC10(fuzz)) {
		/* Ensure 1-bit difference at least */
		if (FUNC9(fuzz))
			continue;
		FUNC1(FUNC13(k, FUNC11(fuzz), FUNC8(fuzz),
		    c, sizeof(c), NULL, 0), 0);
	}
	FUNC6(fuzz);
}