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
typedef  int /*<<< orphan*/  EVP_PKEY_ASN1_METHOD ;

/* Variables and functions */
 int ASN1_PKEY_ALIAS ; 
 int ASN1_PKEY_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*,char const**,char const**,int /*<<< orphan*/  const*) ; 
 int FUNC3 () ; 
 char const* FUNC4 (int) ; 
 int /*<<< orphan*/  bio_out ; 

__attribute__((used)) static void FUNC5(void)
{
    int i;

    for (i = 0; i < FUNC3(); i++) {
        const EVP_PKEY_ASN1_METHOD *ameth;
        int pkey_id, pkey_base_id, pkey_flags;
        const char *pinfo, *pem_str;
        ameth = FUNC1(i);
        FUNC2(&pkey_id, &pkey_base_id, &pkey_flags,
                                &pinfo, &pem_str, ameth);
        if (pkey_flags & ASN1_PKEY_ALIAS) {
            FUNC0(bio_out, "Name: %s\n", FUNC4(pkey_id));
            FUNC0(bio_out, "\tAlias for: %s\n",
                       FUNC4(pkey_base_id));
        } else {
            FUNC0(bio_out, "Name: %s\n", pinfo);
            FUNC0(bio_out, "\tType: %s Algorithm\n",
                       pkey_flags & ASN1_PKEY_DYNAMIC ?
                       "External" : "Builtin");
            FUNC0(bio_out, "\tOID: %s\n", FUNC4(pkey_id));
            if (pem_str == NULL)
                pem_str = "(none)";
            FUNC0(bio_out, "\tPEM string: %s\n", pem_str);
        }

    }
}