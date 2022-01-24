#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_11__ {scalar_t__ skid; } ;
typedef  TYPE_2__ X509 ;
struct TYPE_13__ {int /*<<< orphan*/ * issuer; scalar_t__ serial; scalar_t__ keyid; } ;
struct TYPE_10__ {int /*<<< orphan*/ * dirn; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_1__ d; } ;
typedef  int /*<<< orphan*/  GENERAL_NAMES ;
typedef  TYPE_3__ GENERAL_NAME ;
typedef  TYPE_4__ AUTHORITY_KEYID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ GEN_DIRNAME ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int X509_V_ERR_AKID_ISSUER_SERIAL_MISMATCH ; 
 int X509_V_ERR_AKID_SKID_MISMATCH ; 
 int X509_V_OK ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(X509 *issuer, AUTHORITY_KEYID *akid)
{

    if (!akid)
        return X509_V_OK;

    /* Check key ids (if present) */
    if (akid->keyid && issuer->skid &&
        FUNC1(akid->keyid, issuer->skid))
        return X509_V_ERR_AKID_SKID_MISMATCH;
    /* Check serial number */
    if (akid->serial &&
        FUNC0(FUNC4(issuer), akid->serial))
        return X509_V_ERR_AKID_ISSUER_SERIAL_MISMATCH;
    /* Check issuer name */
    if (akid->issuer) {
        /*
         * Ugh, for some peculiar reason AKID includes SEQUENCE OF
         * GeneralName. So look for a DirName. There may be more than one but
         * we only take any notice of the first.
         */
        GENERAL_NAMES *gens;
        GENERAL_NAME *gen;
        X509_NAME *nm = NULL;
        int i;
        gens = akid->issuer;
        for (i = 0; i < FUNC5(gens); i++) {
            gen = FUNC6(gens, i);
            if (gen->type == GEN_DIRNAME) {
                nm = gen->d.dirn;
                break;
            }
        }
        if (nm && FUNC2(nm, FUNC3(issuer)))
            return X509_V_ERR_AKID_ISSUER_SERIAL_MISMATCH;
    }
    return X509_V_OK;
}