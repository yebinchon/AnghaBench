#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* ameth; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* priv_decode ) (TYPE_2__*,int /*<<< orphan*/  const*) ;} ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  EVP_F_EVP_PKCS82PKEY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_R_METHOD_NOT_SUPPORTED ; 
 int /*<<< orphan*/  EVP_R_PRIVATE_KEY_DECODE_ERROR ; 
 int /*<<< orphan*/  EVP_R_UNSUPPORTED_PRIVATE_KEY_ALGORITHM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/  const*) ; 

EVP_PKEY *FUNC9(const PKCS8_PRIV_KEY_INFO *p8)
{
    EVP_PKEY *pkey = NULL;
    const ASN1_OBJECT *algoid;
    char obj_tmp[80];

    if (!FUNC6(&algoid, NULL, NULL, NULL, p8))
        return NULL;

    if ((pkey = FUNC2()) == NULL) {
        FUNC4(EVP_F_EVP_PKCS82PKEY, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if (!FUNC3(pkey, FUNC5(algoid))) {
        FUNC4(EVP_F_EVP_PKCS82PKEY, EVP_R_UNSUPPORTED_PRIVATE_KEY_ALGORITHM);
        FUNC7(obj_tmp, 80, algoid);
        FUNC0(2, "TYPE=", obj_tmp);
        goto error;
    }

    if (pkey->ameth->priv_decode) {
        if (!pkey->ameth->priv_decode(pkey, p8)) {
            FUNC4(EVP_F_EVP_PKCS82PKEY, EVP_R_PRIVATE_KEY_DECODE_ERROR);
            goto error;
        }
    } else {
        FUNC4(EVP_F_EVP_PKCS82PKEY, EVP_R_METHOD_NOT_SUPPORTED);
        goto error;
    }

    return pkey;

 error:
    FUNC1(pkey);
    return NULL;
}