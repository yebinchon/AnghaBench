#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct st_object {int dummy; } ;
typedef  int /*<<< orphan*/  modulus_bits ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
typedef  int /*<<< orphan*/  CK_ULONG ;
typedef  int /*<<< orphan*/  CK_RV ;
typedef  scalar_t__ CK_KEY_TYPE ;
typedef  int /*<<< orphan*/  CK_BYTE ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CKA_MODULUS ; 
 int /*<<< orphan*/  CKA_MODULUS_BITS ; 
 int /*<<< orphan*/  CKA_PUBLIC_EXPONENT ; 
 scalar_t__ CKK_RSA ; 
 int /*<<< orphan*/  CKR_GENERAL_ERROR ; 
 int /*<<< orphan*/  CKR_OK ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct st_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (size_t) ; 

__attribute__((used)) static CK_RV
FUNC9(hx509_context hxctx, struct st_object *o,
		CK_KEY_TYPE key_type, hx509_cert cert)
{
    BIGNUM *num;
    CK_BYTE *modulus = NULL;
    size_t modulus_len = 0;
    CK_ULONG modulus_bits = 0;
    CK_BYTE *exponent = NULL;
    size_t exponent_len = 0;

    if (key_type != CKK_RSA)
	return CKR_OK;
    if (FUNC4(cert) == NULL)
	return CKR_OK;

    num = FUNC5(context,
					  FUNC4(cert),
					  "rsa-modulus");
    if (num == NULL)
	return CKR_GENERAL_ERROR;
    modulus_bits = FUNC2(num);

    modulus_len = FUNC3(num);
    modulus = FUNC8(modulus_len);
    FUNC0(num, modulus);
    FUNC1(num);

    FUNC6(o, 0, CKA_MODULUS, modulus, modulus_len);
    FUNC6(o, 0, CKA_MODULUS_BITS,
			 &modulus_bits, sizeof(modulus_bits));

    FUNC7(modulus);

    num = FUNC5(context,
					  FUNC4(cert),
					  "rsa-exponent");
    if (num == NULL)
	return CKR_GENERAL_ERROR;

    exponent_len = FUNC3(num);
    exponent = FUNC8(exponent_len);
    FUNC0(num, exponent);
    FUNC1(num);

    FUNC6(o, 0, CKA_PUBLIC_EXPONENT,
			 exponent, exponent_len);

    FUNC7(exponent);

    return CKR_OK;
}