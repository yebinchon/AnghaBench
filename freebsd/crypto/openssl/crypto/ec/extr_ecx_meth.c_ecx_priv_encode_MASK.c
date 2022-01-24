#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ flags; int /*<<< orphan*/  length; int /*<<< orphan*/ * data; } ;
struct TYPE_12__ {int /*<<< orphan*/ * privkey; } ;
struct TYPE_9__ {TYPE_4__* ecx; } ;
struct TYPE_11__ {TYPE_2__* ameth; TYPE_1__ pkey; } ;
struct TYPE_10__ {int /*<<< orphan*/  pkey_id; } ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  TYPE_3__ EVP_PKEY ;
typedef  TYPE_4__ ECX_KEY ;
typedef  TYPE_5__ ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_ECX_PRIV_ENCODE ; 
 int /*<<< orphan*/  EC_R_INVALID_PRIVATE_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  V_ASN1_UNDEF ; 
 int FUNC5 (TYPE_5__*,unsigned char**) ; 

__attribute__((used)) static int FUNC6(PKCS8_PRIV_KEY_INFO *p8, const EVP_PKEY *pkey)
{
    const ECX_KEY *ecxkey = pkey->pkey.ecx;
    ASN1_OCTET_STRING oct;
    unsigned char *penc = NULL;
    int penclen;

    if (ecxkey == NULL || ecxkey->privkey == NULL) {
        FUNC0(EC_F_ECX_PRIV_ENCODE, EC_R_INVALID_PRIVATE_KEY);
        return 0;
    }

    oct.data = ecxkey->privkey;
    oct.length = FUNC1(pkey);
    oct.flags = 0;

    penclen = FUNC5(&oct, &penc);
    if (penclen < 0) {
        FUNC0(EC_F_ECX_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (!FUNC4(p8, FUNC2(pkey->ameth->pkey_id), 0,
                         V_ASN1_UNDEF, NULL, penc, penclen)) {
        FUNC3(penc, penclen);
        FUNC0(EC_F_ECX_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    return 1;
}