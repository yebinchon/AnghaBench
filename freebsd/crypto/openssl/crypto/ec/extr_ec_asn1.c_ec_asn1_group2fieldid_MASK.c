#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_4__* char_two; int /*<<< orphan*/ * prime; int /*<<< orphan*/  other; } ;
struct TYPE_10__ {TYPE_1__ p; int /*<<< orphan*/ * fieldType; } ;
typedef  TYPE_3__ X9_62_FIELDID ;
struct TYPE_9__ {int /*<<< orphan*/ * onBasis; TYPE_6__* ppBasis; int /*<<< orphan*/ * tpBasis; } ;
struct TYPE_11__ {long m; TYPE_2__ p; int /*<<< orphan*/ * type; } ;
typedef  TYPE_4__ X9_62_CHARACTERISTIC_TWO ;
struct TYPE_12__ {long k1; long k2; long k3; } ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,long) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_EC_ASN1_GROUP2FIELDID ; 
 int FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_R_GF2M_NOT_SUPPORTED ; 
 int /*<<< orphan*/  EC_R_UNSUPPORTED_FIELD ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_ASN1_LIB ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_OBJ_LIB ; 
 int NID_X9_62_characteristic_two_field ; 
 int NID_X9_62_ppBasis ; 
 int NID_X9_62_prime_field ; 
 int NID_X9_62_tpBasis ; 
 void* FUNC16 (int) ; 
 TYPE_4__* FUNC17 () ; 
 TYPE_6__* FUNC18 () ; 

__attribute__((used)) static int FUNC19(const EC_GROUP *group, X9_62_FIELDID *field)
{
    int ok = 0, nid;
    BIGNUM *tmp = NULL;

    if (group == NULL || field == NULL)
        return 0;

    /* clear the old values (if necessary) */
    FUNC3(field->fieldType);
    FUNC4(field->p.other);

    nid = FUNC14(FUNC13(group));
    /* set OID for the field */
    if ((field->fieldType = FUNC16(nid)) == NULL) {
        FUNC15(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_OBJ_LIB);
        goto err;
    }

    if (nid == NID_X9_62_prime_field) {
        if ((tmp = FUNC6()) == NULL) {
            FUNC15(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        /* the parameters are specified by the prime number p */
        if (!FUNC9(group, tmp, NULL, NULL, NULL)) {
            FUNC15(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_EC_LIB);
            goto err;
        }
        /* set the prime number */
        field->p.prime = FUNC7(tmp, NULL);
        if (field->p.prime == NULL) {
            FUNC15(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_ASN1_LIB);
            goto err;
        }
    } else if (nid == NID_X9_62_characteristic_two_field)
#ifdef OPENSSL_NO_EC2M
    {
        ECerr(EC_F_EC_ASN1_GROUP2FIELDID, EC_R_GF2M_NOT_SUPPORTED);
        goto err;
    }
#else
    {
        int field_type;
        X9_62_CHARACTERISTIC_TWO *char_two;

        field->p.char_two = FUNC17();
        char_two = field->p.char_two;

        if (char_two == NULL) {
            FUNC15(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_MALLOC_FAILURE);
            goto err;
        }

        char_two->m = (long)FUNC10(group);

        field_type = FUNC8(group);

        if (field_type == 0) {
            FUNC15(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_EC_LIB);
            goto err;
        }
        /* set base type OID */
        if ((char_two->type = FUNC16(field_type)) == NULL) {
            FUNC15(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_OBJ_LIB);
            goto err;
        }

        if (field_type == NID_X9_62_tpBasis) {
            unsigned int k;

            if (!FUNC12(group, &k))
                goto err;

            char_two->p.tpBasis = FUNC0();
            if (char_two->p.tpBasis == NULL) {
                FUNC15(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_MALLOC_FAILURE);
                goto err;
            }
            if (!FUNC1(char_two->p.tpBasis, (long)k)) {
                FUNC15(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_ASN1_LIB);
                goto err;
            }
        } else if (field_type == NID_X9_62_ppBasis) {
            unsigned int k1, k2, k3;

            if (!FUNC11(group, &k1, &k2, &k3))
                goto err;

            char_two->p.ppBasis = FUNC18();
            if (char_two->p.ppBasis == NULL) {
                FUNC15(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_MALLOC_FAILURE);
                goto err;
            }

            /* set k? values */
            char_two->p.ppBasis->k1 = (long)k1;
            char_two->p.ppBasis->k2 = (long)k2;
            char_two->p.ppBasis->k3 = (long)k3;
        } else {                /* field_type == NID_X9_62_onBasis */

            /* for ONB the parameters are (asn1) NULL */
            char_two->p.onBasis = FUNC2();
            if (char_two->p.onBasis == NULL) {
                FUNC15(EC_F_EC_ASN1_GROUP2FIELDID, ERR_R_MALLOC_FAILURE);
                goto err;
            }
        }
    }
#endif
    else {
        FUNC15(EC_F_EC_ASN1_GROUP2FIELDID, EC_R_UNSUPPORTED_FIELD);
        goto err;
    }

    ok = 1;

 err:
    FUNC5(tmp);
    return ok;
}