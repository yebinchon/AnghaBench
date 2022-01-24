#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* mac; } ;
struct TYPE_6__ {int /*<<< orphan*/  dinfo; } ;
typedef  TYPE_2__ PKCS12 ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ PKCS12_ERROR ; 
 int /*<<< orphan*/  PKCS12_F_PKCS12_SET_MAC ; 
 int /*<<< orphan*/  PKCS12_R_MAC_GENERATION_ERROR ; 
 int /*<<< orphan*/  PKCS12_R_MAC_SETUP_ERROR ; 
 int /*<<< orphan*/  PKCS12_R_MAC_STRING_SET_ERROR ; 
 int /*<<< orphan*/  PKCS12_key_gen_utf8 ; 
 scalar_t__ FUNC2 (TYPE_2__*,int,unsigned char*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*,int,unsigned char*,unsigned int*,int /*<<< orphan*/ ) ; 

int FUNC6(PKCS12 *p12, const char *pass, int passlen,
                   unsigned char *salt, int saltlen, int iter,
                   const EVP_MD *md_type)
{
    unsigned char mac[EVP_MAX_MD_SIZE];
    unsigned int maclen;
    ASN1_OCTET_STRING *macoct;

    if (!md_type)
        md_type = FUNC1();
    if (FUNC2(p12, iter, salt, saltlen, md_type) == PKCS12_ERROR) {
        FUNC3(PKCS12_F_PKCS12_SET_MAC, PKCS12_R_MAC_SETUP_ERROR);
        return 0;
    }
    /*
     * Note that output mac is forced to UTF-8...
     */
    if (!FUNC5(p12, pass, passlen, mac, &maclen,
                        PKCS12_key_gen_utf8)) {
        FUNC3(PKCS12_F_PKCS12_SET_MAC, PKCS12_R_MAC_GENERATION_ERROR);
        return 0;
    }
    FUNC4(p12->mac->dinfo, NULL, &macoct);
    if (!FUNC0(macoct, mac, maclen)) {
        FUNC3(PKCS12_F_PKCS12_SET_MAC, PKCS12_R_MAC_STRING_SET_ERROR);
        return 0;
    }
    return 1;
}