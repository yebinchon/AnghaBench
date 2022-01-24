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
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  AFALG_F_BIND_AFALG ; 
 int /*<<< orphan*/  AFALG_R_INIT_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 unsigned short FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * afalg_cipher_nids ; 
 int /*<<< orphan*/  afalg_ciphers ; 
 int /*<<< orphan*/  afalg_destroy ; 
 int /*<<< orphan*/  afalg_finish ; 
 int /*<<< orphan*/  afalg_init ; 
 int /*<<< orphan*/  engine_afalg_id ; 
 int /*<<< orphan*/  engine_afalg_name ; 

__attribute__((used)) static int FUNC10(ENGINE *e)
{
    /* Ensure the afalg error handling is set up */
    unsigned short i;
    FUNC7();

    if (!FUNC4(e, engine_afalg_id)
        || !FUNC6(e, engine_afalg_name)
        || !FUNC2(e, afalg_destroy)
        || !FUNC5(e, afalg_init)
        || !FUNC3(e, afalg_finish)) {
        FUNC0(AFALG_F_BIND_AFALG, AFALG_R_INIT_FAILED);
        return 0;
    }

    /*
     * Create _hidden_aes_xxx_cbc by calling afalg_aes_xxx_cbc
     * now, as bind_aflag can only be called by one thread at a
     * time.
     */
    for(i = 0; i < FUNC8(afalg_cipher_nids); i++) {
        if (FUNC9(afalg_cipher_nids[i]) == NULL) {
            FUNC0(AFALG_F_BIND_AFALG, AFALG_R_INIT_FAILED);
            return 0;
        }
    }

    if (!FUNC1(e, afalg_ciphers)) {
        FUNC0(AFALG_F_BIND_AFALG, AFALG_R_INIT_FAILED);
        return 0;
    }

    return 1;
}