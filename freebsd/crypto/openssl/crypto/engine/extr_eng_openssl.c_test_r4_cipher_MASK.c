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
typedef  int /*<<< orphan*/  TEST_RC4_KEY ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVP_CIPH_VARIABLE_LENGTH ; 
 int /*<<< orphan*/  NID_rc4 ; 
 int /*<<< orphan*/  TEST_RC4_KEY_SIZE ; 
 int /*<<< orphan*/  const* r4_cipher ; 
 int /*<<< orphan*/  test_rc4_cipher ; 
 int /*<<< orphan*/  test_rc4_init_key ; 

__attribute__((used)) static const EVP_CIPHER *FUNC7(void)
{
    if (r4_cipher == NULL) {
        EVP_CIPHER *cipher;

        if ((cipher = FUNC1(NID_rc4, 1, TEST_RC4_KEY_SIZE)) == NULL
            || !FUNC6(cipher, 0)
            || !FUNC3(cipher, EVP_CIPH_VARIABLE_LENGTH)
            || !FUNC5(cipher, test_rc4_init_key)
            || !FUNC2(cipher, test_rc4_cipher)
            || !FUNC4(cipher, sizeof(TEST_RC4_KEY))) {
            FUNC0(cipher);
            cipher = NULL;
        }
        r4_cipher = cipher;
    }
    return r4_cipher;
}