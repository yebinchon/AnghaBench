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
typedef  int /*<<< orphan*/  token ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  scalar_t__ ldns_algorithm ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 scalar_t__ LDNS_ECDSAP256SHA256 ; 
 scalar_t__ LDNS_ECDSAP384SHA384 ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  NID_X9_62_prime256v1 ; 
 int /*<<< orphan*/  NID_secp384r1 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,char*,char*,char*,int,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static EVP_PKEY*
FUNC14(FILE* fp, ldns_algorithm alg, int* line_nr)
{
	char token[16384];
        ldns_rdf* b64rdf = NULL;
        unsigned char* pp;
        BIGNUM* bn;
        EVP_PKEY* evp_key;
        EC_KEY* ec;
	if (FUNC9(fp, "PrivateKey", ": ", token, "\n",
		sizeof(token), line_nr) == -1)
		return NULL;
	if(FUNC13(&b64rdf, token) != LDNS_STATUS_OK)
		return NULL;
        pp = (unsigned char*)FUNC10(b64rdf);

        if(alg == LDNS_ECDSAP256SHA256)
                ec = FUNC3(NID_X9_62_prime256v1);
        else if(alg == LDNS_ECDSAP384SHA384)
                ec = FUNC3(NID_secp384r1);
        else    ec = NULL;
        if(!ec) {
	        FUNC11(b64rdf);
                return NULL;
        }
	bn = FUNC0(pp, (int)FUNC12(b64rdf), NULL);
	FUNC11(b64rdf);
        if(!bn) {
                FUNC2(ec);
                return NULL;
        }
        FUNC4(ec, bn);
        FUNC1(bn);
        if(!FUNC8(ec)) {
                FUNC2(ec);
                return NULL;
        }

        evp_key = FUNC7();
        if(!evp_key) {
                FUNC2(ec);
                return NULL;
        }
        if (!FUNC5(evp_key, ec)) {
		FUNC6(evp_key);
                FUNC2(ec);
                return NULL;
	}
        return evp_key;
}