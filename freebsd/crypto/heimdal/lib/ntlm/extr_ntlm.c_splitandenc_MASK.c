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
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(unsigned char *hash,
	    unsigned char *challenge,
	    unsigned char *answer)
{
    EVP_CIPHER_CTX *ctx;
    unsigned char key[8];

    key[0] =  hash[0];
    key[1] = (hash[0] << 7) | (hash[1] >> 1);
    key[2] = (hash[1] << 6) | (hash[2] >> 2);
    key[3] = (hash[2] << 5) | (hash[3] >> 3);
    key[4] = (hash[3] << 4) | (hash[4] >> 4);
    key[5] = (hash[4] << 3) | (hash[5] >> 5);
    key[6] = (hash[5] << 2) | (hash[6] >> 6);
    key[7] = (hash[6] << 1);

    ctx = FUNC1();
    if (ctx == NULL)
	return ENOMEM;

    FUNC3(ctx, FUNC4(), NULL, key, NULL, 1);
    FUNC2(ctx, answer, challenge, 8);
    FUNC0(ctx);
    FUNC5(key, 0, sizeof(key));
    return 0;
}