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
typedef  int /*<<< orphan*/  BIO_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_TYPE_FILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prefix_callback_ctrl ; 
 int /*<<< orphan*/  prefix_create ; 
 int /*<<< orphan*/  prefix_ctrl ; 
 int /*<<< orphan*/  prefix_destroy ; 
 int /*<<< orphan*/  prefix_gets ; 
 int /*<<< orphan*/ * prefix_meth ; 
 int /*<<< orphan*/  prefix_puts ; 
 int /*<<< orphan*/  prefix_read ; 
 int /*<<< orphan*/  prefix_write ; 

BIO_METHOD *FUNC10(void)
{
    if (prefix_meth == NULL) {
        if ((prefix_meth =
             FUNC1(BIO_TYPE_FILTER, "Prefix filter")) == NULL
            || !FUNC3(prefix_meth, prefix_create)
            || !FUNC5(prefix_meth, prefix_destroy)
            || !FUNC9(prefix_meth, prefix_write)
            || !FUNC8(prefix_meth, prefix_read)
            || !FUNC7(prefix_meth, prefix_puts)
            || !FUNC6(prefix_meth, prefix_gets)
            || !FUNC4(prefix_meth, prefix_ctrl)
            || !FUNC2(prefix_meth, prefix_callback_ctrl)) {
            FUNC0(prefix_meth);
            prefix_meth = NULL;
        }
    }
    return prefix_meth;
}