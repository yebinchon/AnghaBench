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
 int /*<<< orphan*/  NID_sha1 ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,unsigned char*,unsigned int*,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC1 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHA_DIGEST_LENGTH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,unsigned int,scalar_t__) ; 

ldns_rdf *
FUNC7(ldns_buffer *to_sign, RSA *key)
{
	unsigned char *sha1_hash;
	unsigned int siglen;
	ldns_rdf *sigdata_rdf;
	ldns_buffer *b64sig;
	int result;

	siglen = 0;
	b64sig = FUNC4(LDNS_MAX_PACKETLEN);
	if (!b64sig) {
		return NULL;
	}

	sha1_hash = FUNC1((unsigned char*)FUNC2(to_sign),
				  FUNC5(to_sign), NULL);
	if (!sha1_hash) {
		FUNC3(b64sig);
		return NULL;
	}

	result = FUNC0(NID_sha1, sha1_hash, SHA_DIGEST_LENGTH,
				   (unsigned char*)FUNC2(b64sig),
				   &siglen, key);
	if (result != 1) {
		FUNC3(b64sig);
		return NULL;
	}

	sigdata_rdf = FUNC6(LDNS_RDF_TYPE_B64, siglen, 
								 FUNC2(b64sig));
	FUNC3(b64sig); /* can't free this buffer ?? */
	return sigdata_rdf;
}