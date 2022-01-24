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
typedef  int /*<<< orphan*/  CTLOG_STORE_LOAD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CT_F_CTLOG_STORE_LOAD_CTX_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static CTLOG_STORE_LOAD_CTX *FUNC2(void)
{
    CTLOG_STORE_LOAD_CTX *ctx = FUNC1(sizeof(*ctx));

    if (ctx == NULL)
        FUNC0(CT_F_CTLOG_STORE_LOAD_CTX_NEW, ERR_R_MALLOC_FAILURE);

    return ctx;
}