#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* cipher; } ;
struct TYPE_13__ {int options; TYPE_3__* s3; TYPE_5__* session; } ;
struct TYPE_10__ {int key_block_length; unsigned char* key_block; int /*<<< orphan*/ * new_compression; int /*<<< orphan*/  const* new_hash; int /*<<< orphan*/  const* new_sym_enc; } ;
struct TYPE_12__ {int need_empty_fragments; TYPE_1__ tmp; } ;
struct TYPE_11__ {scalar_t__ algorithm_enc; } ;
typedef  int /*<<< orphan*/  SSL_COMP ;
typedef  TYPE_4__ SSL ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 unsigned char* FUNC3 (int) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL3_SETUP_KEY_BLOCK ; 
 int SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS ; 
 scalar_t__ SSL_RC4 ; 
 int /*<<< orphan*/  SSL_R_CIPHER_OR_HASH_UNAVAILABLE ; 
 scalar_t__ SSL_eNULL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_4__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

int FUNC8(SSL *s)
{
    unsigned char *p;
    const EVP_CIPHER *c;
    const EVP_MD *hash;
    int num;
    int ret = 0;
    SSL_COMP *comp;

    if (s->s3->tmp.key_block_length != 0)
        return 1;

    if (!FUNC7(s->session, &c, &hash, NULL, NULL, &comp, 0)) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_SETUP_KEY_BLOCK,
                 SSL_R_CIPHER_OR_HASH_UNAVAILABLE);
        return 0;
    }

    s->s3->tmp.new_sym_enc = c;
    s->s3->tmp.new_hash = hash;
#ifdef OPENSSL_NO_COMP
    s->s3->tmp.new_compression = NULL;
#else
    s->s3->tmp.new_compression = comp;
#endif

    num = FUNC2(hash);
    if (num < 0)
        return 0;

    num = FUNC1(c) + num + FUNC0(c);
    num *= 2;

    FUNC5(s);

    if ((p = FUNC3(num)) == NULL) {
        FUNC4(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_SETUP_KEY_BLOCK,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }

    s->s3->tmp.key_block_length = num;
    s->s3->tmp.key_block = p;

    /* Calls SSLfatal() as required */
    ret = FUNC6(s, p, num);

    if (!(s->options & SSL_OP_DONT_INSERT_EMPTY_FRAGMENTS)) {
        /*
         * enable vulnerability countermeasure for CBC ciphers with known-IV
         * problem (http://www.openssl.org/~bodo/tls-cbc.txt)
         */
        s->s3->need_empty_fragments = 1;

        if (s->session->cipher != NULL) {
            if (s->session->cipher->algorithm_enc == SSL_eNULL)
                s->s3->need_empty_fragments = 0;

#ifndef OPENSSL_NO_RC4
            if (s->session->cipher->algorithm_enc == SSL_RC4)
                s->s3->need_empty_fragments = 0;
#endif
        }
    }

    return ret;
}