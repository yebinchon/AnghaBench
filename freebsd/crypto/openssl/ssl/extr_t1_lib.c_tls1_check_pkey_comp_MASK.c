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
struct TYPE_5__ {unsigned char* peer_ecpointformats; size_t peer_ecpointformats_len; } ;
struct TYPE_6__ {TYPE_1__ ext; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ EVP_PKEY_EC ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int NID_X9_62_characteristic_two_field ; 
 int NID_X9_62_prime_field ; 
 scalar_t__ POINT_CONVERSION_UNCOMPRESSED ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 unsigned char TLSEXT_ECPOINTFORMAT_ansiX962_compressed_char2 ; 
 unsigned char TLSEXT_ECPOINTFORMAT_ansiX962_compressed_prime ; 
 unsigned char TLSEXT_ECPOINTFORMAT_uncompressed ; 

__attribute__((used)) static int FUNC7(SSL *s, EVP_PKEY *pkey)
{
    const EC_KEY *ec;
    const EC_GROUP *grp;
    unsigned char comp_id;
    size_t i;

    /* If not an EC key nothing to check */
    if (FUNC5(pkey) != EVP_PKEY_EC)
        return 1;
    ec = FUNC4(pkey);
    grp = FUNC1(ec);

    /* Get required compression id */
    if (FUNC2(ec) == POINT_CONVERSION_UNCOMPRESSED) {
            comp_id = TLSEXT_ECPOINTFORMAT_uncompressed;
    } else if (FUNC6(s)) {
            /*
             * ec_point_formats extension is not used in TLSv1.3 so we ignore
             * this check.
             */
            return 1;
    } else {
        int field_type = FUNC3(FUNC0(grp));

        if (field_type == NID_X9_62_prime_field)
            comp_id = TLSEXT_ECPOINTFORMAT_ansiX962_compressed_prime;
        else if (field_type == NID_X9_62_characteristic_two_field)
            comp_id = TLSEXT_ECPOINTFORMAT_ansiX962_compressed_char2;
        else
            return 0;
    }
    /*
     * If point formats extension present check it, otherwise everything is
     * supported (see RFC4492).
     */
    if (s->ext.peer_ecpointformats == NULL)
        return 1;

    for (i = 0; i < s->ext.peer_ecpointformats_len; i++) {
        if (s->ext.peer_ecpointformats[i] == comp_id)
            return 1;
    }
    return 0;
}