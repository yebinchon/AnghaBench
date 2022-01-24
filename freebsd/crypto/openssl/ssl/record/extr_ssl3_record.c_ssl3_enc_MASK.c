#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  read_hash; int /*<<< orphan*/ * session; int /*<<< orphan*/ * enc_read_ctx; int /*<<< orphan*/ * enc_write_ctx; } ;
struct TYPE_7__ {unsigned char* data; unsigned char* input; size_t length; } ;
typedef  TYPE_1__ SSL3_RECORD ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL3_ENC ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC8 (TYPE_1__*,size_t,size_t) ; 

int FUNC9(SSL *s, SSL3_RECORD *inrecs, size_t n_recs, int sending)
{
    SSL3_RECORD *rec;
    EVP_CIPHER_CTX *ds;
    size_t l, i;
    size_t bs, mac_size = 0;
    int imac_size;
    const EVP_CIPHER *enc;

    rec = inrecs;
    /*
     * We shouldn't ever be called with more than one record in the SSLv3 case
     */
    if (n_recs != 1)
        return 0;
    if (sending) {
        ds = s->enc_write_ctx;
        if (s->enc_write_ctx == NULL)
            enc = NULL;
        else
            enc = FUNC1(s->enc_write_ctx);
    } else {
        ds = s->enc_read_ctx;
        if (s->enc_read_ctx == NULL)
            enc = NULL;
        else
            enc = FUNC1(s->enc_read_ctx);
    }

    if ((s->session == NULL) || (ds == NULL) || (enc == NULL)) {
        FUNC6(rec->data, rec->input, rec->length);
        rec->input = rec->data;
    } else {
        l = rec->length;
        /* TODO(size_t): Convert this call */
        bs = FUNC0(ds);

        /* COMPRESS */

        if ((bs != 1) && sending) {
            i = bs - (l % bs);

            /* we need to add 'i-1' padding bytes */
            l += i;
            /*
             * the last of these zero bytes will be overwritten with the
             * padding length.
             */
            FUNC7(&rec->input[rec->length], 0, i);
            rec->length += i;
            rec->input[l - 1] = (unsigned char)(i - 1);
        }

        if (!sending) {
            if (l == 0 || l % bs != 0)
                return 0;
            /* otherwise, rec->length >= bs */
        }

        /* TODO(size_t): Convert this call */
        if (FUNC2(ds, rec->data, rec->input, (unsigned int)l) < 1)
            return -1;

        if (FUNC3(s->read_hash) != NULL) {
            /* TODO(size_t): convert me */
            imac_size = FUNC4(s->read_hash);
            if (imac_size < 0) {
                FUNC5(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_ENC,
                         ERR_R_INTERNAL_ERROR);
                return -1;
            }
            mac_size = (size_t)imac_size;
        }
        if ((bs != 1) && !sending)
            return FUNC8(rec, bs, mac_size);
    }
    return 1;
}