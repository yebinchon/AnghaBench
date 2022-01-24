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
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_buffer ;
typedef  int /*<<< orphan*/  RSA ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_PACKETLEN ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_B64 ; 
 unsigned char* FUNC0 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MD5_DIGEST_LENGTH ; 
 int /*<<< orphan*/  NID_md5 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,unsigned char*,unsigned int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,unsigned int,scalar_t__) ; 

ldns_rdf *
FUNC7(ldns_buffer *to_sign, RSA *key)
{
	unsigned char *md5_hash;
	unsigned int siglen;
	ldns_rdf *sigdata_rdf;
	ldns_buffer *b64sig;

	b64sig = FUNC4(LDNS_MAX_PACKETLEN);
	if (!b64sig) {
		return NULL;
	}

	md5_hash = FUNC0((unsigned char*)FUNC2(to_sign),
				FUNC5(to_sign), NULL);
	if (!md5_hash) {
		FUNC3(b64sig);
		return NULL;
	}

	FUNC1(NID_md5, md5_hash, MD5_DIGEST_LENGTH,
		    (unsigned char*)FUNC2(b64sig),
		    &siglen, key);

	sigdata_rdf = FUNC6(LDNS_RDF_TYPE_B64, siglen,
								 FUNC2(b64sig));
	FUNC3(b64sig);
	return sigdata_rdf;
}