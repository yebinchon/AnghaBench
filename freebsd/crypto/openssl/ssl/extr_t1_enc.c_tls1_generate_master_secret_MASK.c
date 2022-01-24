#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hash ;
struct TYPE_10__ {TYPE_2__* session; TYPE_1__* s3; } ;
struct TYPE_9__ {int flags; scalar_t__ master_key; } ;
struct TYPE_8__ {unsigned char* client_random; int /*<<< orphan*/ * server_random; } ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t) ; 
 size_t SSL3_MASTER_SECRET_SIZE ; 
 size_t SSL3_RANDOM_SIZE ; 
 int SSL_SESS_FLAG_EXTMS ; 
 int /*<<< orphan*/  TLS_MD_EXTENDED_MASTER_SECRET_CONST ; 
 int /*<<< orphan*/  TLS_MD_EXTENDED_MASTER_SECRET_CONST_SIZE ; 
 int /*<<< orphan*/  TLS_MD_MASTER_SECRET_CONST ; 
 int /*<<< orphan*/  TLS_MD_MASTER_SECRET_CONST_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,size_t,unsigned char*,size_t,int) ; 

int FUNC6(SSL *s, unsigned char *out, unsigned char *p,
                                size_t len, size_t *secret_size)
{
    if (s->session->flags & SSL_SESS_FLAG_EXTMS) {
        unsigned char hash[EVP_MAX_MD_SIZE * 2];
        size_t hashlen;
        /*
         * Digest cached records keeping record buffer (if present): this wont
         * affect client auth because we're freezing the buffer at the same
         * point (after client key exchange and before certificate verify)
         */
        if (!FUNC3(s, 1)
                || !FUNC4(s, hash, sizeof(hash), &hashlen)) {
            /* SSLfatal() already called */
            return 0;
        }
#ifdef SSL_DEBUG
        fprintf(stderr, "Handshake hashes:\n");
        BIO_dump_fp(stderr, (char *)hash, hashlen);
#endif
        if (!FUNC5(s,
                      TLS_MD_EXTENDED_MASTER_SECRET_CONST,
                      TLS_MD_EXTENDED_MASTER_SECRET_CONST_SIZE,
                      hash, hashlen,
                      NULL, 0,
                      NULL, 0,
                      NULL, 0, p, len, out,
                      SSL3_MASTER_SECRET_SIZE, 1)) {
            /* SSLfatal() already called */
            return 0;
        }
        FUNC1(hash, hashlen);
    } else {
        if (!FUNC5(s,
                      TLS_MD_MASTER_SECRET_CONST,
                      TLS_MD_MASTER_SECRET_CONST_SIZE,
                      s->s3->client_random, SSL3_RANDOM_SIZE,
                      NULL, 0,
                      s->s3->server_random, SSL3_RANDOM_SIZE,
                      NULL, 0, p, len, out,
                      SSL3_MASTER_SECRET_SIZE, 1)) {
           /* SSLfatal() already called */
            return 0;
        }
    }
#ifdef SSL_DEBUG
    fprintf(stderr, "Premaster Secret:\n");
    BIO_dump_fp(stderr, (char *)p, len);
    fprintf(stderr, "Client Random:\n");
    BIO_dump_fp(stderr, (char *)s->s3->client_random, SSL3_RANDOM_SIZE);
    fprintf(stderr, "Server Random:\n");
    BIO_dump_fp(stderr, (char *)s->s3->server_random, SSL3_RANDOM_SIZE);
    fprintf(stderr, "Master Secret:\n");
    BIO_dump_fp(stderr, (char *)s->session->master_key,
                SSL3_MASTER_SECRET_SIZE);
#endif

    *secret_size = SSL3_MASTER_SECRET_SIZE;
    return 1;
}