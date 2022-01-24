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
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int) ; 
 int EVP_CIPH_CBC_MODE ; 
 int EVP_CIPH_FLAG_DEFAULT_ASN1 ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  NID_aes_128_cbc ; 
 int /*<<< orphan*/  const* _hidden_aes_128_cbc ; 
 int /*<<< orphan*/  ossltest_aes128_cbc_cipher ; 
 int /*<<< orphan*/  ossltest_aes128_init_key ; 

__attribute__((used)) static const EVP_CIPHER *FUNC9(void)
{
    if (_hidden_aes_128_cbc == NULL
        && ((_hidden_aes_128_cbc = FUNC2(NID_aes_128_cbc,
                                                       16 /* block size */,
                                                       16 /* key len */)) == NULL
            || !FUNC7(_hidden_aes_128_cbc,16)
            || !FUNC4(_hidden_aes_128_cbc,
                                          EVP_CIPH_FLAG_DEFAULT_ASN1
                                          | EVP_CIPH_CBC_MODE)
            || !FUNC6(_hidden_aes_128_cbc,
                                         ossltest_aes128_init_key)
            || !FUNC3(_hidden_aes_128_cbc,
                                              ossltest_aes128_cbc_cipher)
            || !FUNC5(_hidden_aes_128_cbc,
                                                  FUNC0(FUNC8())))) {
        FUNC1(_hidden_aes_128_cbc);
        _hidden_aes_128_cbc = NULL;
    }
    return _hidden_aes_128_cbc;
}