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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 scalar_t__ LDNS_ECDSAP256SHA256 ; 
 scalar_t__ LDNS_ECDSAP384SHA384 ; 
 int /*<<< orphan*/  NID_X9_62_prime256v1 ; 
 int /*<<< orphan*/  NID_secp384r1 ; 
 unsigned char POINT_CONVERSION_UNCOMPRESSED ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,unsigned char const**,int) ; 

EVP_PKEY*
FUNC7(const unsigned char* key, size_t keylen, uint8_t algo)
{
	unsigned char buf[256+2]; /* sufficient for 2*384/8+1 */
        const unsigned char* pp = buf;
        EVP_PKEY *evp_key;
        EC_KEY *ec;
	/* check length, which uncompressed must be 2 bignums */
        if(algo == LDNS_ECDSAP256SHA256) {
		if(keylen != 2*256/8) return NULL;
                ec = FUNC1(NID_X9_62_prime256v1);
        } else if(algo == LDNS_ECDSAP384SHA384) {
		if(keylen != 2*384/8) return NULL;
                ec = FUNC1(NID_secp384r1);
        } else    ec = NULL;
        if(!ec) return NULL;
	if(keylen+1 > sizeof(buf))
		return NULL; /* sanity check */
	/* prepend the 0x02 (from docs) (or actually 0x04 from implementation
	 * of openssl) for uncompressed data */
	buf[0] = POINT_CONVERSION_UNCOMPRESSED;
	FUNC5(buf+1, key, keylen);
        if(!FUNC6(&ec, &pp, (int)keylen+1)) {
                FUNC0(ec);
                return NULL;
        }
        evp_key = FUNC4();
        if(!evp_key) {
                FUNC0(ec);
                return NULL;
        }
        if (!FUNC2(evp_key, ec)) {
		FUNC3(evp_key);
		FUNC0(ec);
		return NULL;
	}
        return evp_key;
}