#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_2__ X509_ALGOR ;
struct TYPE_11__ {int /*<<< orphan*/  algorithm; } ;
struct TYPE_10__ {scalar_t__ trailerField; scalar_t__ saltLength; TYPE_6__* maskGenAlgorithm; TYPE_1__* hashAlgorithm; } ;
struct TYPE_8__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_3__ RSA_PSS_PARAMS ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (TYPE_6__*) ; 

__attribute__((used)) static int FUNC7(BIO *bp, int pss_key, RSA_PSS_PARAMS *pss,
                               int indent)
{
    int rv = 0;
    X509_ALGOR *maskHash = NULL;

    if (!FUNC0(bp, indent, 128))
        goto err;
    if (pss_key) {
        if (pss == NULL) {
            if (FUNC2(bp, "No PSS parameter restrictions\n") <= 0)
                return 0;
            return 1;
        } else {
            if (FUNC2(bp, "PSS parameter restrictions:") <= 0)
                return 0;
        }
    } else if (pss == NULL) {
        if (FUNC2(bp,"(INVALID PSS PARAMETERS)\n") <= 0)
            return 0;
        return 1;
    }
    if (FUNC2(bp, "\n") <= 0)
        goto err;
    if (pss_key)
        indent += 2;
    if (!FUNC0(bp, indent, 128))
        goto err;
    if (FUNC2(bp, "Hash Algorithm: ") <= 0)
        goto err;

    if (pss->hashAlgorithm) {
        if (FUNC5(bp, pss->hashAlgorithm->algorithm) <= 0)
            goto err;
    } else if (FUNC2(bp, "sha1 (default)") <= 0) {
        goto err;
    }

    if (FUNC2(bp, "\n") <= 0)
        goto err;

    if (!FUNC0(bp, indent, 128))
        goto err;

    if (FUNC2(bp, "Mask Algorithm: ") <= 0)
        goto err;
    if (pss->maskGenAlgorithm) {
        if (FUNC5(bp, pss->maskGenAlgorithm->algorithm) <= 0)
            goto err;
        if (FUNC2(bp, " with ") <= 0)
            goto err;
        maskHash = FUNC6(pss->maskGenAlgorithm);
        if (maskHash != NULL) {
            if (FUNC5(bp, maskHash->algorithm) <= 0)
                goto err;
        } else if (FUNC2(bp, "INVALID") <= 0) {
            goto err;
        }
    } else if (FUNC2(bp, "mgf1 with sha1 (default)") <= 0) {
        goto err;
    }
    FUNC2(bp, "\n");

    if (!FUNC0(bp, indent, 128))
        goto err;
    if (FUNC1(bp, "%s Salt Length: 0x", pss_key ? "Minimum" : "") <= 0)
        goto err;
    if (pss->saltLength) {
        if (FUNC4(bp, pss->saltLength) <= 0)
            goto err;
    } else if (FUNC2(bp, "14 (default)") <= 0) {
        goto err;
    }
    FUNC2(bp, "\n");

    if (!FUNC0(bp, indent, 128))
        goto err;
    if (FUNC2(bp, "Trailer Field: 0x") <= 0)
        goto err;
    if (pss->trailerField) {
        if (FUNC4(bp, pss->trailerField) <= 0)
            goto err;
    } else if (FUNC2(bp, "BC (default)") <= 0) {
        goto err;
    }
    FUNC2(bp, "\n");

    rv = 1;

 err:
    FUNC3(maskHash);
    return rv;

}