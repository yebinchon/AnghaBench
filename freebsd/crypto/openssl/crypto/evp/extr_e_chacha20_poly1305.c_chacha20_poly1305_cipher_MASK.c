#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int aad; int text; } ;
struct TYPE_12__ {int /*<<< orphan*/  d; } ;
struct TYPE_13__ {int* counter; scalar_t__ partial_len; int /*<<< orphan*/  buf; TYPE_1__ key; } ;
struct TYPE_16__ {size_t tls_payload_length; int mac_inited; unsigned char* tls_aad; int aad; unsigned char* tag; size_t tag_len; TYPE_3__ len; TYPE_2__ key; } ;
struct TYPE_15__ {scalar_t__ encrypt; } ;
typedef  TYPE_4__ EVP_CIPHER_CTX ;
typedef  TYPE_5__ EVP_CHACHA_AEAD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CHACHA_BLK_SIZE ; 
 scalar_t__ FUNC0 (unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 size_t EVP_AEAD_TLS1_AAD_LEN ; 
 size_t NO_TLS_PAYLOAD_LENGTH ; 
 size_t POLY1305_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 
 TYPE_5__* FUNC6 (TYPE_4__*) ; 
 int FUNC7 (TYPE_4__*,unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,unsigned char*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 unsigned char* zero ; 

__attribute__((used)) static int FUNC11(EVP_CIPHER_CTX *ctx, unsigned char *out,
                                    const unsigned char *in, size_t len)
{
    EVP_CHACHA_AEAD_CTX *actx = FUNC6(ctx);
    size_t rem, plen = actx->tls_payload_length;

    if (!actx->mac_inited) {
#  if !defined(OPENSSL_SMALL_FOOTPRINT)
        if (plen != NO_TLS_PAYLOAD_LENGTH && out != NULL)
            return FUNC7(ctx, out, in, len);
#  endif
        actx->key.counter[0] = 0;
        FUNC1(actx->key.buf, zero, CHACHA_BLK_SIZE,
                       actx->key.key.d, actx->key.counter);
        FUNC4(FUNC2(actx), actx->key.buf);
        actx->key.counter[0] = 1;
        actx->key.partial_len = 0;
        actx->len.aad = actx->len.text = 0;
        actx->mac_inited = 1;
        if (plen != NO_TLS_PAYLOAD_LENGTH) {
            FUNC5(FUNC2(actx), actx->tls_aad,
                            EVP_AEAD_TLS1_AAD_LEN);
            actx->len.aad = EVP_AEAD_TLS1_AAD_LEN;
            actx->aad = 1;
        }
    }

    if (in) {                                   /* aad or text */
        if (out == NULL) {                      /* aad */
            FUNC5(FUNC2(actx), in, len);
            actx->len.aad += len;
            actx->aad = 1;
            return len;
        } else {                                /* plain- or ciphertext */
            if (actx->aad) {                    /* wrap up aad */
                if ((rem = (size_t)actx->len.aad % POLY1305_BLOCK_SIZE))
                    FUNC5(FUNC2(actx), zero,
                                    POLY1305_BLOCK_SIZE - rem);
                actx->aad = 0;
            }

            actx->tls_payload_length = NO_TLS_PAYLOAD_LENGTH;
            if (plen == NO_TLS_PAYLOAD_LENGTH)
                plen = len;
            else if (len != plen + POLY1305_BLOCK_SIZE)
                return -1;

            if (ctx->encrypt) {                 /* plaintext */
                FUNC8(ctx, out, in, plen);
                FUNC5(FUNC2(actx), out, plen);
                in += plen;
                out += plen;
                actx->len.text += plen;
            } else {                            /* ciphertext */
                FUNC5(FUNC2(actx), in, plen);
                FUNC8(ctx, out, in, plen);
                in += plen;
                out += plen;
                actx->len.text += plen;
            }
        }
    }
    if (in == NULL                              /* explicit final */
        || plen != len) {                       /* or tls mode */
        const union {
            long one;
            char little;
        } is_endian = { 1 };
        unsigned char temp[POLY1305_BLOCK_SIZE];

        if (actx->aad) {                        /* wrap up aad */
            if ((rem = (size_t)actx->len.aad % POLY1305_BLOCK_SIZE))
                FUNC5(FUNC2(actx), zero,
                                POLY1305_BLOCK_SIZE - rem);
            actx->aad = 0;
        }

        if ((rem = (size_t)actx->len.text % POLY1305_BLOCK_SIZE))
            FUNC5(FUNC2(actx), zero,
                            POLY1305_BLOCK_SIZE - rem);

        if (is_endian.little) {
            FUNC5(FUNC2(actx),
                            (unsigned char *)&actx->len, POLY1305_BLOCK_SIZE);
        } else {
            temp[0]  = (unsigned char)(actx->len.aad);
            temp[1]  = (unsigned char)(actx->len.aad>>8);
            temp[2]  = (unsigned char)(actx->len.aad>>16);
            temp[3]  = (unsigned char)(actx->len.aad>>24);
            temp[4]  = (unsigned char)(actx->len.aad>>32);
            temp[5]  = (unsigned char)(actx->len.aad>>40);
            temp[6]  = (unsigned char)(actx->len.aad>>48);
            temp[7]  = (unsigned char)(actx->len.aad>>56);

            temp[8]  = (unsigned char)(actx->len.text);
            temp[9]  = (unsigned char)(actx->len.text>>8);
            temp[10] = (unsigned char)(actx->len.text>>16);
            temp[11] = (unsigned char)(actx->len.text>>24);
            temp[12] = (unsigned char)(actx->len.text>>32);
            temp[13] = (unsigned char)(actx->len.text>>40);
            temp[14] = (unsigned char)(actx->len.text>>48);
            temp[15] = (unsigned char)(actx->len.text>>56);

            FUNC5(FUNC2(actx), temp, POLY1305_BLOCK_SIZE);
        }
        FUNC3(FUNC2(actx), ctx->encrypt ? actx->tag
                                                        : temp);
        actx->mac_inited = 0;

        if (in != NULL && len != plen) {        /* tls mode */
            if (ctx->encrypt) {
                FUNC9(out, actx->tag, POLY1305_BLOCK_SIZE);
            } else {
                if (FUNC0(temp, in, POLY1305_BLOCK_SIZE)) {
                    FUNC10(out - plen, 0, plen);
                    return -1;
                }
            }
        }
        else if (!ctx->encrypt) {
            if (FUNC0(temp, actx->tag, actx->tag_len))
                return -1;
        }
    }
    return len;
}