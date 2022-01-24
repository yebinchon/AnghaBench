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
struct hx509_generate_private_context {int /*<<< orphan*/  const* key_oid; } ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_oid ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_OID_ID_PKCS1_RSAENCRYPTION ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct hx509_generate_private_context* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

int
FUNC3(hx509_context context,
				 const heim_oid *oid,
				 struct hx509_generate_private_context **ctx)
{
    *ctx = NULL;

    if (FUNC1(oid, ASN1_OID_ID_PKCS1_RSAENCRYPTION) != 0) {
	FUNC2(context, 0, EINVAL,
			       "private key not an RSA key");
	return EINVAL;
    }

    *ctx = FUNC0(1, sizeof(**ctx));
    if (*ctx == NULL) {
	FUNC2(context, 0, ENOMEM, "out of memory");
	return ENOMEM;
    }
    (*ctx)->key_oid = oid;

    return 0;
}