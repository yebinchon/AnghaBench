#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * ec; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_ECKEY_PRIV_ENCODE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int EC_PKEY_NO_PARAMETERS ; 
 int /*<<< orphan*/  EC_R_DECODE_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  NID_X9_62_id_ecPublicKey ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,void*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,void**,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char**) ; 

__attribute__((used)) static int FUNC9(PKCS8_PRIV_KEY_INFO *p8, const EVP_PKEY *pkey)
{
    EC_KEY ec_key = *(pkey->pkey.ec);
    unsigned char *ep, *p;
    int eplen, ptype;
    void *pval;
    unsigned int old_flags;

    if (!FUNC7(&ptype, &pval, &ec_key)) {
        FUNC2(EC_F_ECKEY_PRIV_ENCODE, EC_R_DECODE_ERROR);
        return 0;
    }

    /* set the private key */

    /*
     * do not include the parameters in the SEC1 private key see PKCS#11
     * 12.11
     */
    old_flags = FUNC0(&ec_key);
    FUNC1(&ec_key, old_flags | EC_PKEY_NO_PARAMETERS);

    eplen = FUNC8(&ec_key, NULL);
    if (!eplen) {
        FUNC2(EC_F_ECKEY_PRIV_ENCODE, ERR_R_EC_LIB);
        return 0;
    }
    ep = FUNC5(eplen);
    if (ep == NULL) {
        FUNC2(EC_F_ECKEY_PRIV_ENCODE, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    p = ep;
    if (!FUNC8(&ec_key, &p)) {
        FUNC4(ep);
        FUNC2(EC_F_ECKEY_PRIV_ENCODE, ERR_R_EC_LIB);
        return 0;
    }

    if (!FUNC6(p8, FUNC3(NID_X9_62_id_ecPublicKey), 0,
                         ptype, pval, ep, eplen)) {
        FUNC4(ep);
        return 0;
    }

    return 1;
}