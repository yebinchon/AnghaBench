#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  algorithm; } ;
struct TYPE_6__ {int /*<<< orphan*/  issuerKeyHash; int /*<<< orphan*/  issuerNameHash; TYPE_1__ hashAlgorithm; } ;
typedef  TYPE_2__ OCSP_CERTID ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(const OCSP_CERTID *a, const OCSP_CERTID *b)
{
    int ret;
    ret = FUNC1(a->hashAlgorithm.algorithm, b->hashAlgorithm.algorithm);
    if (ret)
        return ret;
    ret = FUNC0(&a->issuerNameHash, &b->issuerNameHash);
    if (ret)
        return ret;
    return FUNC0(&a->issuerKeyHash, &b->issuerKeyHash);
}