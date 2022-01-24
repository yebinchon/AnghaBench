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
 int /*<<< orphan*/  AES_GCM_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  NID_aes_128_gcm ; 
 int /*<<< orphan*/  const* _hidden_aes_128_gcm ; 
 int /*<<< orphan*/  ossltest_aes128_gcm_cipher ; 
 int /*<<< orphan*/  ossltest_aes128_gcm_ctrl ; 
 int /*<<< orphan*/  ossltest_aes128_gcm_init_key ; 

__attribute__((used)) static const EVP_CIPHER *FUNC10(void)
{
    if (_hidden_aes_128_gcm == NULL
        && ((_hidden_aes_128_gcm = FUNC2(NID_aes_128_gcm,
                                                       1 /* block size */,
                                                       16 /* key len */)) == NULL
            || !FUNC8(_hidden_aes_128_gcm,12)
            || !FUNC5(_hidden_aes_128_gcm, AES_GCM_FLAGS)
            || !FUNC7(_hidden_aes_128_gcm,
                                         ossltest_aes128_gcm_init_key)
            || !FUNC4(_hidden_aes_128_gcm,
                                              ossltest_aes128_gcm_cipher)
            || !FUNC3(_hidden_aes_128_gcm,
                                              ossltest_aes128_gcm_ctrl)
            || !FUNC6(_hidden_aes_128_gcm,
                              FUNC0(FUNC9())))) {
        FUNC1(_hidden_aes_128_gcm);
        _hidden_aes_128_gcm = NULL;
    }
    return _hidden_aes_128_gcm;
}