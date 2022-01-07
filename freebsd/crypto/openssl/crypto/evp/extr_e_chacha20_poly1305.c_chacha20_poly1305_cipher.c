
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int aad; int text; } ;
struct TYPE_12__ {int d; } ;
struct TYPE_13__ {int* counter; scalar_t__ partial_len; int buf; TYPE_1__ key; } ;
struct TYPE_16__ {size_t tls_payload_length; int mac_inited; unsigned char* tls_aad; int aad; unsigned char* tag; size_t tag_len; TYPE_3__ len; TYPE_2__ key; } ;
struct TYPE_15__ {scalar_t__ encrypt; } ;
typedef TYPE_4__ EVP_CIPHER_CTX ;
typedef TYPE_5__ EVP_CHACHA_AEAD_CTX ;


 int CHACHA_BLK_SIZE ;
 scalar_t__ CRYPTO_memcmp (unsigned char*,unsigned char const*,size_t) ;
 int ChaCha20_ctr32 (int ,unsigned char*,int ,int ,int*) ;
 size_t EVP_AEAD_TLS1_AAD_LEN ;
 size_t NO_TLS_PAYLOAD_LENGTH ;
 size_t POLY1305_BLOCK_SIZE ;
 int POLY1305_ctx (TYPE_5__*) ;
 int Poly1305_Final (int ,unsigned char*) ;
 int Poly1305_Init (int ,int ) ;
 int Poly1305_Update (int ,unsigned char const*,size_t) ;
 TYPE_5__* aead_data (TYPE_4__*) ;
 int chacha20_poly1305_tls_cipher (TYPE_4__*,unsigned char*,unsigned char const*,size_t) ;
 int chacha_cipher (TYPE_4__*,unsigned char*,unsigned char const*,size_t) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,size_t) ;
 unsigned char* zero ;

__attribute__((used)) static int chacha20_poly1305_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                                    const unsigned char *in, size_t len)
{
    EVP_CHACHA_AEAD_CTX *actx = aead_data(ctx);
    size_t rem, plen = actx->tls_payload_length;

    if (!actx->mac_inited) {

        if (plen != NO_TLS_PAYLOAD_LENGTH && out != ((void*)0))
            return chacha20_poly1305_tls_cipher(ctx, out, in, len);

        actx->key.counter[0] = 0;
        ChaCha20_ctr32(actx->key.buf, zero, CHACHA_BLK_SIZE,
                       actx->key.key.d, actx->key.counter);
        Poly1305_Init(POLY1305_ctx(actx), actx->key.buf);
        actx->key.counter[0] = 1;
        actx->key.partial_len = 0;
        actx->len.aad = actx->len.text = 0;
        actx->mac_inited = 1;
        if (plen != NO_TLS_PAYLOAD_LENGTH) {
            Poly1305_Update(POLY1305_ctx(actx), actx->tls_aad,
                            EVP_AEAD_TLS1_AAD_LEN);
            actx->len.aad = EVP_AEAD_TLS1_AAD_LEN;
            actx->aad = 1;
        }
    }

    if (in) {
        if (out == ((void*)0)) {
            Poly1305_Update(POLY1305_ctx(actx), in, len);
            actx->len.aad += len;
            actx->aad = 1;
            return len;
        } else {
            if (actx->aad) {
                if ((rem = (size_t)actx->len.aad % POLY1305_BLOCK_SIZE))
                    Poly1305_Update(POLY1305_ctx(actx), zero,
                                    POLY1305_BLOCK_SIZE - rem);
                actx->aad = 0;
            }

            actx->tls_payload_length = NO_TLS_PAYLOAD_LENGTH;
            if (plen == NO_TLS_PAYLOAD_LENGTH)
                plen = len;
            else if (len != plen + POLY1305_BLOCK_SIZE)
                return -1;

            if (ctx->encrypt) {
                chacha_cipher(ctx, out, in, plen);
                Poly1305_Update(POLY1305_ctx(actx), out, plen);
                in += plen;
                out += plen;
                actx->len.text += plen;
            } else {
                Poly1305_Update(POLY1305_ctx(actx), in, plen);
                chacha_cipher(ctx, out, in, plen);
                in += plen;
                out += plen;
                actx->len.text += plen;
            }
        }
    }
    if (in == ((void*)0)
        || plen != len) {
        const union {
            long one;
            char little;
        } is_endian = { 1 };
        unsigned char temp[POLY1305_BLOCK_SIZE];

        if (actx->aad) {
            if ((rem = (size_t)actx->len.aad % POLY1305_BLOCK_SIZE))
                Poly1305_Update(POLY1305_ctx(actx), zero,
                                POLY1305_BLOCK_SIZE - rem);
            actx->aad = 0;
        }

        if ((rem = (size_t)actx->len.text % POLY1305_BLOCK_SIZE))
            Poly1305_Update(POLY1305_ctx(actx), zero,
                            POLY1305_BLOCK_SIZE - rem);

        if (is_endian.little) {
            Poly1305_Update(POLY1305_ctx(actx),
                            (unsigned char *)&actx->len, POLY1305_BLOCK_SIZE);
        } else {
            temp[0] = (unsigned char)(actx->len.aad);
            temp[1] = (unsigned char)(actx->len.aad>>8);
            temp[2] = (unsigned char)(actx->len.aad>>16);
            temp[3] = (unsigned char)(actx->len.aad>>24);
            temp[4] = (unsigned char)(actx->len.aad>>32);
            temp[5] = (unsigned char)(actx->len.aad>>40);
            temp[6] = (unsigned char)(actx->len.aad>>48);
            temp[7] = (unsigned char)(actx->len.aad>>56);

            temp[8] = (unsigned char)(actx->len.text);
            temp[9] = (unsigned char)(actx->len.text>>8);
            temp[10] = (unsigned char)(actx->len.text>>16);
            temp[11] = (unsigned char)(actx->len.text>>24);
            temp[12] = (unsigned char)(actx->len.text>>32);
            temp[13] = (unsigned char)(actx->len.text>>40);
            temp[14] = (unsigned char)(actx->len.text>>48);
            temp[15] = (unsigned char)(actx->len.text>>56);

            Poly1305_Update(POLY1305_ctx(actx), temp, POLY1305_BLOCK_SIZE);
        }
        Poly1305_Final(POLY1305_ctx(actx), ctx->encrypt ? actx->tag
                                                        : temp);
        actx->mac_inited = 0;

        if (in != ((void*)0) && len != plen) {
            if (ctx->encrypt) {
                memcpy(out, actx->tag, POLY1305_BLOCK_SIZE);
            } else {
                if (CRYPTO_memcmp(temp, in, POLY1305_BLOCK_SIZE)) {
                    memset(out - plen, 0, plen);
                    return -1;
                }
            }
        }
        else if (!ctx->encrypt) {
            if (CRYPTO_memcmp(temp, actx->tag, actx->tag_len))
                return -1;
        }
    }
    return len;
}
