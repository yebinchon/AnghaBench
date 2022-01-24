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
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  OCSP_CERTID ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 

OCSP_CERTID *FUNC6(const EVP_MD *dgst, const X509 *subject,
                             const X509 *issuer)
{
    X509_NAME *iname;
    const ASN1_INTEGER *serial;
    ASN1_BIT_STRING *ikey;
    if (!dgst)
        dgst = FUNC0();
    if (subject) {
        iname = FUNC4(subject);
        serial = FUNC3(subject);
    } else {
        iname = FUNC5(issuer);
        serial = NULL;
    }
    ikey = FUNC2(issuer);
    return FUNC1(dgst, iname, ikey, serial);
}