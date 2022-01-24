#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ktmp; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ POLY1305_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  EVP_PKEY_CTRL_DIGESTINIT 130 
#define  EVP_PKEY_CTRL_MD 129 
#define  EVP_PKEY_CTRL_SET_MAC_KEY 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ ,size_t*) ; 
 size_t POLY1305_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(EVP_PKEY_CTX *ctx, int type, int p1, void *p2)
{
    POLY1305_PKEY_CTX *pctx = FUNC3(ctx);
    const unsigned char *key;
    size_t len;

    switch (type) {

    case EVP_PKEY_CTRL_MD:
        /* ignore */
        break;

    case EVP_PKEY_CTRL_SET_MAC_KEY:
    case EVP_PKEY_CTRL_DIGESTINIT:
        if (type == EVP_PKEY_CTRL_SET_MAC_KEY) {
            /* user explicitly setting the key */
            key = p2;
            len = p1;
        } else {
            /* user indirectly setting the key via EVP_DigestSignInit */
            key = FUNC4(FUNC2(ctx), &len);
        }
        if (key == NULL || len != POLY1305_KEY_SIZE ||
            !FUNC0(&pctx->ktmp, key, len))
            return 0;
        FUNC5(&pctx->ctx, FUNC1(&pctx->ktmp));
        break;

    default:
        return -2;

    }
    return 1;
}