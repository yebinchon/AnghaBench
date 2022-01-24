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
struct TYPE_2__ {int /*<<< orphan*/ * key; int /*<<< orphan*/  ks; } ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(EVP_CIPHER_CTX *ctx, const unsigned char *key,
                             const unsigned char *iv, int enc)
{
# ifdef TEST_ENG_OPENSSL_RC4_P_INIT
    fprintf(stderr, "(TEST_ENG_OPENSSL_RC4) test_init_key() called\n");
# endif
    FUNC3(&FUNC4(ctx)->key[0], key, FUNC0(ctx));
    FUNC1(&FUNC4(ctx)->ks, FUNC0(ctx),
                FUNC4(ctx)->key);
    return 1;
}