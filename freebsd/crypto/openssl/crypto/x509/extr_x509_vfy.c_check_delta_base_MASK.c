#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  crl_number; int /*<<< orphan*/  base_crl_number; } ;
typedef  TYPE_1__ X509_CRL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_authority_key_identifier ; 
 int /*<<< orphan*/  NID_issuing_distribution_point ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(X509_CRL *delta, X509_CRL *base)
{
    /* Delta CRL must be a delta */
    if (!delta->base_crl_number)
        return 0;
    /* Base must have a CRL number */
    if (!base->crl_number)
        return 0;
    /* Issuer names must match */
    if (FUNC2(FUNC1(base), FUNC1(delta)))
        return 0;
    /* AKID and IDP must match */
    if (!FUNC3(delta, base, NID_authority_key_identifier))
        return 0;
    if (!FUNC3(delta, base, NID_issuing_distribution_point))
        return 0;
    /* Delta CRL base number must not exceed Full CRL number. */
    if (FUNC0(delta->base_crl_number, base->crl_number) > 0)
        return 0;
    /* Delta CRL number must exceed full CRL number */
    if (FUNC0(delta->crl_number, base->crl_number) > 0)
        return 1;
    return 0;
}