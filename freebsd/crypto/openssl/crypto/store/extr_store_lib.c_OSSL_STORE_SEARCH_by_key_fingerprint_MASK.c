#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;
struct TYPE_4__ {unsigned char const* string; size_t stringlength; int /*<<< orphan*/  const* digest; int /*<<< orphan*/  search_type; } ;
typedef  TYPE_1__ OSSL_STORE_SEARCH ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,size_t) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  OSSL_STORE_F_OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT ; 
 int /*<<< orphan*/  OSSL_STORE_R_FINGERPRINT_SIZE_DOES_NOT_MATCH_DIGEST ; 
 int /*<<< orphan*/  OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

OSSL_STORE_SEARCH *FUNC6(const EVP_MD *digest,
                                                        const unsigned char
                                                        *bytes, size_t len)
{
    OSSL_STORE_SEARCH *search = FUNC4(sizeof(*search));

    if (search == NULL) {
        FUNC5(OSSL_STORE_F_OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT,
                      ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if (digest != NULL && len != (size_t)FUNC3(digest)) {
        char buf1[20], buf2[20];

        FUNC0(buf1, sizeof(buf1), "%d", FUNC3(digest));
        FUNC0(buf2, sizeof(buf2), "%zu", len);
        FUNC5(OSSL_STORE_F_OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT,
                      OSSL_STORE_R_FINGERPRINT_SIZE_DOES_NOT_MATCH_DIGEST);
        FUNC1(5, FUNC2(digest), " size is ", buf1,
                           ", fingerprint size is ", buf2);
    }

    search->search_type = OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT;
    search->digest = digest;
    search->string = bytes;
    search->stringlength = len;
    return search;
}