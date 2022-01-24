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
typedef  int /*<<< orphan*/  header ;
struct TYPE_10__ {int mac_flags; int version; TYPE_1__* s3; int /*<<< orphan*/  enc_read_ctx; int /*<<< orphan*/  rlayer; int /*<<< orphan*/ * read_hash; int /*<<< orphan*/ * write_hash; } ;
struct TYPE_9__ {unsigned char type; int length; unsigned char* input; int* data; int /*<<< orphan*/  orig_len; } ;
struct TYPE_8__ {int /*<<< orphan*/  read_mac_secret_size; int /*<<< orphan*/  read_mac_secret; } ;
typedef  TYPE_2__ SSL3_RECORD ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ EVP_CIPH_CBC_MODE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 int SSL_MAC_FLAG_READ_MAC_STREAM ; 
 int SSL_MAC_FLAG_WRITE_MAC_STREAM ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char*,unsigned char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC19(SSL *ssl, SSL3_RECORD *rec, unsigned char *md, int sending)
{
    unsigned char *seq;
    EVP_MD_CTX *hash;
    size_t md_size;
    int i;
    EVP_MD_CTX *hmac = NULL, *mac_ctx;
    unsigned char header[13];
    int stream_mac = (sending ? (ssl->mac_flags & SSL_MAC_FLAG_WRITE_MAC_STREAM)
                      : (ssl->mac_flags & SSL_MAC_FLAG_READ_MAC_STREAM));
    int t;

    if (sending) {
        seq = FUNC10(&ssl->rlayer);
        hash = ssl->write_hash;
    } else {
        seq = FUNC9(&ssl->rlayer);
        hash = ssl->read_hash;
    }

    t = FUNC8(hash);
    if (!FUNC15(t >= 0))
        return 0;
    md_size = t;

    /* I should fix this up TLS TLS TLS TLS TLS XXXXXXXX */
    if (stream_mac) {
        mac_ctx = hash;
    } else {
        hmac = FUNC7();
        if (hmac == NULL || !FUNC5(hmac, hash)) {
            FUNC6(hmac);
            return 0;
        }
        mac_ctx = hmac;
    }

    if (FUNC11(ssl)) {
        unsigned char dtlsseq[8], *p = dtlsseq;

        FUNC16(sending ? FUNC1(&ssl->rlayer) :
            FUNC0(&ssl->rlayer), p);
        FUNC14(p, &seq[2], 6);

        FUNC14(header, dtlsseq, 8);
    } else
        FUNC14(header, seq, 8);

    header[8] = rec->type;
    header[9] = (unsigned char)(ssl->version >> 8);
    header[10] = (unsigned char)(ssl->version);
    header[11] = (unsigned char)(rec->length >> 8);
    header[12] = (unsigned char)(rec->length & 0xff);

    if (!sending && !FUNC12(ssl) &&
        FUNC2(ssl->enc_read_ctx) == EVP_CIPH_CBC_MODE &&
        FUNC18(mac_ctx)) {
        /*
         * This is a CBC-encrypted record. We must avoid leaking any
         * timing-side channel information about how many blocks of data we
         * are hashing because that gives an attacker a timing-oracle.
         */
        /* Final param == not SSLv3 */
        if (FUNC17(mac_ctx,
                                   md, &md_size,
                                   header, rec->input,
                                   rec->length + md_size, rec->orig_len,
                                   ssl->s3->read_mac_secret,
                                   ssl->s3->read_mac_secret_size, 0) <= 0) {
            FUNC6(hmac);
            return 0;
        }
    } else {
        /* TODO(size_t): Convert these calls */
        if (FUNC4(mac_ctx, header, sizeof(header)) <= 0
            || FUNC4(mac_ctx, rec->input, rec->length) <= 0
            || FUNC3(mac_ctx, md, &md_size) <= 0) {
            FUNC6(hmac);
            return 0;
        }
    }

    FUNC6(hmac);

#ifdef SSL_DEBUG
    fprintf(stderr, "seq=");
    {
        int z;
        for (z = 0; z < 8; z++)
            fprintf(stderr, "%02X ", seq[z]);
        fprintf(stderr, "\n");
    }
    fprintf(stderr, "rec=");
    {
        size_t z;
        for (z = 0; z < rec->length; z++)
            fprintf(stderr, "%02X ", rec->data[z]);
        fprintf(stderr, "\n");
    }
#endif

    if (!FUNC11(ssl)) {
        for (i = 7; i >= 0; i--) {
            ++seq[i];
            if (seq[i] != 0)
                break;
        }
    }
#ifdef SSL_DEBUG
    {
        unsigned int z;
        for (z = 0; z < md_size; z++)
            fprintf(stderr, "%02X ", md[z]);
        fprintf(stderr, "\n");
    }
#endif
    return 1;
}