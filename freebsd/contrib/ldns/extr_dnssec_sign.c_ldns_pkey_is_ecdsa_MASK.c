#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ EVP_PKEY_EC ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ NID_X9_62_prime256v1 ; 
 scalar_t__ NID_secp384r1 ; 
 TYPE_1__* key ; 

__attribute__((used)) static int
FUNC6(EVP_PKEY* pkey)
{
        EC_KEY* ec;
        const EC_GROUP* g;
#ifdef HAVE_EVP_PKEY_BASE_ID
        if(EVP_PKEY_base_id(pkey) != EVP_PKEY_EC)
                return 0;
#else
        if(FUNC5(key->type) != EVP_PKEY_EC)
                return 0;
#endif
        ec = FUNC4(pkey);
        g = FUNC2(ec);
        if(!g) {
                FUNC1(ec);
                return 0;
        }
        if(FUNC0(g) == NID_X9_62_prime256v1) {
                FUNC1(ec);
                return 32; /* 256/8 */
	}
        if(FUNC0(g) == NID_secp384r1) {
                FUNC1(ec);
                return 48; /* 384/8 */
        }
        /* downref the eckey, the original is still inside the pkey */
        FUNC1(ec);
        return 0;
}