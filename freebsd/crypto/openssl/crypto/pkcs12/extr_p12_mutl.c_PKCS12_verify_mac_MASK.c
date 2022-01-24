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
struct TYPE_6__ {TYPE_1__* mac; } ;
struct TYPE_5__ {int /*<<< orphan*/  dinfo; } ;
typedef  TYPE_2__ PKCS12 ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  PKCS12_F_PKCS12_VERIFY_MAC ; 
 int /*<<< orphan*/  PKCS12_R_MAC_ABSENT ; 
 int /*<<< orphan*/  PKCS12_R_MAC_GENERATION_ERROR ; 
 int /*<<< orphan*/  PKCS12_key_gen_utf8 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*,int,unsigned char*,unsigned int*,int /*<<< orphan*/ ) ; 

int FUNC6(PKCS12 *p12, const char *pass, int passlen)
{
    unsigned char mac[EVP_MAX_MD_SIZE];
    unsigned int maclen;
    const ASN1_OCTET_STRING *macoct;

    if (p12->mac == NULL) {
        FUNC3(PKCS12_F_PKCS12_VERIFY_MAC, PKCS12_R_MAC_ABSENT);
        return 0;
    }
    if (!FUNC5(p12, pass, passlen, mac, &maclen,
                        PKCS12_key_gen_utf8)) {
        FUNC3(PKCS12_F_PKCS12_VERIFY_MAC, PKCS12_R_MAC_GENERATION_ERROR);
        return 0;
    }
    FUNC4(p12->mac->dinfo, NULL, &macoct);
    if ((maclen != (unsigned int)FUNC1(macoct))
        || FUNC2(mac, FUNC0(macoct), maclen) != 0)
        return 0;

    return 1;
}