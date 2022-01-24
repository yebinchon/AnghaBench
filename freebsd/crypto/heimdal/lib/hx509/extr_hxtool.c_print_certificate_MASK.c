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
typedef  int /*<<< orphan*/  hx509_validate_ctx ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_VALIDATE_F_VALIDATE ; 
 int /*<<< orphan*/  HX509_VALIDATE_F_VERBOSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hx509_print_stdout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC10(hx509_context hxcontext, hx509_cert cert, int verbose)
{
    const char *fn;
    int ret;

    fn = FUNC2(cert);
    if (fn)
	FUNC9("    friendly name: %s\n", fn);
    FUNC9("    private key: %s\n",
	   FUNC0(cert) ? "yes" : "no");

    ret = FUNC3(hxcontext, cert, NULL);
    if (ret)
	FUNC1(1, "failed to print cert");

    if (verbose) {
	hx509_validate_ctx vctx;

	FUNC7(hxcontext, &vctx);
	FUNC8(vctx, hx509_print_stdout, stdout);
	FUNC5(vctx, HX509_VALIDATE_F_VALIDATE);
	FUNC5(vctx, HX509_VALIDATE_F_VERBOSE);

	FUNC4(hxcontext, vctx, cert);

	FUNC6(vctx);
    }
}