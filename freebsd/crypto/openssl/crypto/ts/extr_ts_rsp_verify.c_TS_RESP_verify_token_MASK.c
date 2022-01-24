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
typedef  int /*<<< orphan*/  TS_VERIFY_CTX ;
typedef  int /*<<< orphan*/  TS_TST_INFO ;
typedef  int /*<<< orphan*/  PKCS7 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(TS_VERIFY_CTX *ctx, PKCS7 *token)
{
    TS_TST_INFO *tst_info = FUNC0(token);
    int ret = 0;
    if (tst_info) {
        ret = FUNC2(ctx, token, tst_info);
        FUNC1(tst_info);
    }
    return ret;
}