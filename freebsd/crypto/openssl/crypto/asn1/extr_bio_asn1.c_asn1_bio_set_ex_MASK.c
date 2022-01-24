#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  asn1_ps_func ;
struct TYPE_3__ {int /*<<< orphan*/ * ex_free_func; int /*<<< orphan*/ * ex_func; } ;
typedef  TYPE_1__ BIO_ASN1_EX_FUNCS ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC1(BIO *b, int cmd,
                           asn1_ps_func *ex_func, asn1_ps_func *ex_free_func)
{
    BIO_ASN1_EX_FUNCS extmp;
    extmp.ex_func = ex_func;
    extmp.ex_free_func = ex_free_func;
    return FUNC0(b, cmd, 0, &extmp);
}