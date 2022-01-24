#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_8__ {scalar_t__ early_data_ok; } ;
struct TYPE_12__ {TYPE_4__* s3; TYPE_3__* session; int /*<<< orphan*/  hit; TYPE_1__ ext; } ;
struct TYPE_11__ {size_t alpn_selected_len; int /*<<< orphan*/ * alpn_selected; int /*<<< orphan*/  alpn_sent; } ;
struct TYPE_9__ {size_t alpn_selected_len; int /*<<< orphan*/ * alpn_selected; } ;
struct TYPE_10__ {TYPE_2__ ext; } ;
typedef  TYPE_5__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_UNSUPPORTED_EXTENSION ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_STOC_ALPN ; 
 int /*<<< orphan*/  SSL_R_BAD_EXTENSION ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(SSL *s, PACKET *pkt, unsigned int context, X509 *x,
                        size_t chainidx)
{
    size_t len;

    /* We must have requested it. */
    if (!s->s3->alpn_sent) {
        FUNC7(s, SSL_AD_UNSUPPORTED_EXTENSION, SSL_F_TLS_PARSE_STOC_ALPN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }
    /*-
     * The extension data consists of:
     *   uint16 list_length
     *   uint8 proto_length;
     *   uint8 proto[proto_length];
     */
    if (!FUNC5(pkt, &len)
        || FUNC6(pkt) != len || !FUNC4(pkt, &len)
        || FUNC6(pkt) != len) {
        FUNC7(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_ALPN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }
    FUNC0(s->s3->alpn_selected);
    s->s3->alpn_selected = FUNC1(len);
    if (s->s3->alpn_selected == NULL) {
        FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_ALPN,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }
    if (!FUNC3(pkt, s->s3->alpn_selected, len)) {
        FUNC7(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_ALPN,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }
    s->s3->alpn_selected_len = len;

    if (s->session->ext.alpn_selected == NULL
            || s->session->ext.alpn_selected_len != len
            || FUNC8(s->session->ext.alpn_selected, s->s3->alpn_selected, len)
               != 0) {
        /* ALPN not consistent with the old session so cannot use early_data */
        s->ext.early_data_ok = 0;
    }
    if (!s->hit) {
        /*
         * This is a new session and so alpn_selected should have been
         * initialised to NULL. We should update it with the selected ALPN.
         */
        if (!FUNC9(s->session->ext.alpn_selected == NULL)) {
            FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_ALPN,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
        s->session->ext.alpn_selected =
            FUNC2(s->s3->alpn_selected, s->s3->alpn_selected_len);
        if (s->session->ext.alpn_selected == NULL) {
            FUNC7(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PARSE_STOC_ALPN,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
        s->session->ext.alpn_selected_len = s->s3->alpn_selected_len;
    }

    return 1;
}