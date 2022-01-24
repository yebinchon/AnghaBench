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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (char,int) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BIO *FUNC10(const char *filename, char mode, int format,
                              int quiet)
{
    BIO *ret;

    if (filename == NULL || FUNC8(filename, "-") == 0) {
        ret = mode == 'r' ? FUNC4(format) : FUNC5(format);
        if (quiet) {
            FUNC2();
            return ret;
        }
        if (ret != NULL)
            return ret;
        FUNC1(bio_err,
                   "Can't open %s, %s\n",
                   mode == 'r' ? "stdin" : "stdout", FUNC9(errno));
    } else {
        ret = FUNC0(filename, FUNC6(mode, format));
        if (quiet) {
            FUNC2();
            return ret;
        }
        if (ret != NULL)
            return ret;
        FUNC1(bio_err,
                   "Can't open %s for %s, %s\n",
                   filename, FUNC7(mode), FUNC9(errno));
    }
    FUNC3(bio_err);
    return NULL;
}