#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_6__ {int /*<<< orphan*/ * exts; int /*<<< orphan*/ * ids; } ;
struct TYPE_7__ {scalar_t__ status_type; TYPE_1__ ocsp; } ;
struct TYPE_8__ {TYPE_2__ ext; scalar_t__ hit; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  OCSP_RESPID ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned char const* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST ; 
 int /*<<< orphan*/  SSL_R_BAD_EXTENSION ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TLSEXT_STATUSTYPE_nothing ; 
 scalar_t__ TLSEXT_STATUSTYPE_ocsp ; 
 int /*<<< orphan*/  X509_EXTENSION_free ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,unsigned char const**,int) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC14(SSL *s, PACKET *pkt, unsigned int context,
                                  X509 *x, size_t chainidx)
{
    PACKET responder_id_list, exts;

    /* We ignore this in a resumption handshake */
    if (s->hit)
        return 1;

    /* Not defined if we get one of these in a client Certificate */
    if (x != NULL)
        return 1;

    if (!FUNC4(pkt, (unsigned int *)&s->ext.status_type)) {
        FUNC7(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, SSL_R_BAD_EXTENSION);
        return 0;
    }

    if (s->ext.status_type != TLSEXT_STATUSTYPE_ocsp) {
        /*
         * We don't know what to do with any other type so ignore it.
         */
        s->ext.status_type = TLSEXT_STATUSTYPE_nothing;
        return 1;
    }

    if (!FUNC5 (pkt, &responder_id_list)) {
        FUNC7(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, SSL_R_BAD_EXTENSION);
        return 0;
    }

    /*
     * We remove any OCSP_RESPIDs from a previous handshake
     * to prevent unbounded memory growth - CVE-2016-6304
     */
    FUNC11(s->ext.ocsp.ids, OCSP_RESPID_free);
    if (FUNC6(&responder_id_list) > 0) {
        s->ext.ocsp.ids = FUNC10();
        if (s->ext.ocsp.ids == NULL) {
            FUNC7(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    } else {
        s->ext.ocsp.ids = NULL;
    }

    while (FUNC6(&responder_id_list) > 0) {
        OCSP_RESPID *id;
        PACKET responder_id;
        const unsigned char *id_data;

        if (!FUNC5(&responder_id_list, &responder_id)
                || FUNC6(&responder_id) == 0) {
            FUNC7(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, SSL_R_BAD_EXTENSION);
            return 0;
        }

        id_data = FUNC2(&responder_id);
        /* TODO(size_t): Convert d2i_* to size_t */
        id = FUNC8(NULL, &id_data,
                             (int)FUNC6(&responder_id));
        if (id == NULL) {
            FUNC7(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, SSL_R_BAD_EXTENSION);
            return 0;
        }

        if (id_data != FUNC3(&responder_id)) {
            FUNC0(id);
            FUNC7(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, SSL_R_BAD_EXTENSION);

            return 0;
        }

        if (!FUNC12(s->ext.ocsp.ids, id)) {
            FUNC0(id);
            FUNC7(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, ERR_R_INTERNAL_ERROR);

            return 0;
        }
    }

    /* Read in request_extensions */
    if (!FUNC1(pkt, &exts)) {
        FUNC7(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, SSL_R_BAD_EXTENSION);
        return 0;
    }

    if (FUNC6(&exts) > 0) {
        const unsigned char *ext_data = FUNC2(&exts);

        FUNC13(s->ext.ocsp.exts,
                                   X509_EXTENSION_free);
        s->ext.ocsp.exts =
            FUNC9(NULL, &ext_data, (int)FUNC6(&exts));
        if (s->ext.ocsp.exts == NULL || ext_data != FUNC3(&exts)) {
            FUNC7(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PARSE_CTOS_STATUS_REQUEST, SSL_R_BAD_EXTENSION);
            return 0;
        }
    }

    return 1;
}