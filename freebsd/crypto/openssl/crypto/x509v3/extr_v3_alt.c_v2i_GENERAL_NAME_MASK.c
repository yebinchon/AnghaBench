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
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
typedef  int /*<<< orphan*/  X509V3_CTX ;
typedef  int /*<<< orphan*/  GENERAL_NAME ;
typedef  int /*<<< orphan*/  CONF_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

GENERAL_NAME *FUNC1(const X509V3_EXT_METHOD *method,
                               X509V3_CTX *ctx, CONF_VALUE *cnf)
{
    return FUNC0(NULL, method, ctx, cnf, 0);
}