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
typedef  int /*<<< orphan*/  X509_PUBKEY ;
struct TYPE_13__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {int /*<<< orphan*/  pub_key; scalar_t__ g; scalar_t__ q; scalar_t__ p; } ;
struct TYPE_10__ {TYPE_3__* dsa; } ;
struct TYPE_11__ {scalar_t__ save_parameters; TYPE_1__ pkey; } ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  TYPE_3__ DSA ;
typedef  TYPE_4__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_4__* FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DSA_F_DSA_PUB_ENCODE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  EVP_PKEY_DSA ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int V_ASN1_SEQUENCE ; 
 int V_ASN1_UNDEF ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_4__*,unsigned char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char**) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(X509_PUBKEY *pk, const EVP_PKEY *pkey)
{
    DSA *dsa;
    int ptype;
    unsigned char *penc = NULL;
    int penclen;
    ASN1_STRING *str = NULL;
    ASN1_INTEGER *pubint = NULL;
    ASN1_OBJECT *aobj;

    dsa = pkey->pkey.dsa;
    if (pkey->save_parameters && dsa->p && dsa->q && dsa->g) {
        str = FUNC2();
        if (str == NULL) {
            FUNC4(DSA_F_DSA_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        str->length = FUNC9(dsa, &str->data);
        if (str->length <= 0) {
            FUNC4(DSA_F_DSA_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        ptype = V_ASN1_SEQUENCE;
    } else
        ptype = V_ASN1_UNDEF;

    pubint = FUNC3(dsa->pub_key, NULL);

    if (pubint == NULL) {
        FUNC4(DSA_F_DSA_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    penclen = FUNC8(pubint, &penc);
    FUNC0(pubint);

    if (penclen <= 0) {
        FUNC4(DSA_F_DSA_PUB_ENCODE, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    aobj = FUNC5(EVP_PKEY_DSA);
    if (aobj == NULL)
        goto err;

    if (FUNC7(pk, aobj, ptype, str, penc, penclen))
        return 1;

 err:
    FUNC6(penc);
    FUNC1(str);

    return 0;
}