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
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;
struct fuzz {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int FUZZ_1_BIT_FLIP ; 
 int FUZZ_1_BYTE_FLIP ; 
 int FUZZ_TRUNCATE_END ; 
 int FUZZ_TRUNCATE_START ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fuzz*) ; 
 struct fuzz* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fuzz*) ; 
 int /*<<< orphan*/  FUNC5 (struct fuzz*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuzz*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuzz*) ; 
 int /*<<< orphan*/  FUNC8 (struct fuzz*) ; 
 int /*<<< orphan*/  onerror ; 
 int /*<<< orphan*/  FUNC9 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct sshbuf*) ; 
 struct sshbuf* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct sshkey*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sshkey**) ; 
 scalar_t__ FUNC16 (struct sshkey*,struct sshbuf*) ; 

__attribute__((used)) static void
FUNC17(struct sshkey *k)
{
	struct sshkey *k1;
	struct sshbuf *buf;
	struct fuzz *fuzz;

	FUNC1(buf = FUNC12(), NULL);
	FUNC0(FUNC16(k, buf), 0);
	/* XXX need a way to run the tests in "slow, but complete" mode */
	fuzz = FUNC3(FUZZ_1_BIT_FLIP | /* XXX too slow FUZZ_2_BIT_FLIP | */
	    FUZZ_1_BYTE_FLIP | /* XXX too slow FUZZ_2_BYTE_FLIP | */
	    FUZZ_TRUNCATE_START | FUZZ_TRUNCATE_END,
	    FUNC11(buf), FUNC10(buf));
	FUNC0(FUNC15(FUNC13(buf), FUNC10(buf),
	    &k1), 0);
	FUNC14(k1);
	FUNC9(buf);
	FUNC2(onerror, fuzz);
	for(; !FUNC5(fuzz); FUNC7(fuzz)) {
		if (FUNC15(FUNC8(fuzz), FUNC6(fuzz), &k1) == 0)
			FUNC14(k1);
	}
	FUNC4(fuzz);
}