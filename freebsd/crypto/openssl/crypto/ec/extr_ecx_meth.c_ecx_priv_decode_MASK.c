#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_ALGOR ;
struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int /*<<< orphan*/  pkey_id; } ;
typedef  int /*<<< orphan*/  PKCS8_PRIV_KEY_INFO ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_OP_PRIVATE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const**,int*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(EVP_PKEY *pkey, const PKCS8_PRIV_KEY_INFO *p8)
{
    const unsigned char *p;
    int plen;
    ASN1_OCTET_STRING *oct = NULL;
    const X509_ALGOR *palg;
    int rv;

    if (!FUNC3(NULL, &p, &plen, &palg, p8))
        return 0;

    oct = FUNC4(NULL, &p, plen);
    if (oct == NULL) {
        p = NULL;
        plen = 0;
    } else {
        p = FUNC1(oct);
        plen = FUNC2(oct);
    }

    rv = FUNC5(pkey, pkey->ameth->pkey_id, palg, p, plen, KEY_OP_PRIVATE);
    FUNC0(oct);
    return rv;
}