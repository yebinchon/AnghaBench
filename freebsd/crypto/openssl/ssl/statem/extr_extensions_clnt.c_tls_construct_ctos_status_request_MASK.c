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
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_6__ {scalar_t__ exts; int /*<<< orphan*/  ids; } ;
struct TYPE_7__ {scalar_t__ status_type; TYPE_1__ ocsp; } ;
struct TYPE_8__ {TYPE_2__ ext; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  OCSP_RESPID ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TLSEXT_STATUSTYPE_ocsp ; 
 int /*<<< orphan*/  TLSEXT_TYPE_status_request ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,unsigned char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,unsigned char**) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char**) ; 
 int FUNC8 (scalar_t__,unsigned char**) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int) ; 

EXT_RETURN FUNC11(SSL *s, WPACKET *pkt,
                                             unsigned int context, X509 *x,
                                             size_t chainidx)
{
    int i;

    /* This extension isn't defined for client Certificates */
    if (x != NULL)
        return EXT_RETURN_NOT_SENT;

    if (s->ext.status_type != TLSEXT_STATUSTYPE_ocsp)
        return EXT_RETURN_NOT_SENT;

    if (!FUNC3(pkt, TLSEXT_TYPE_status_request)
               /* Sub-packet for status request extension */
            || !FUNC5(pkt)
            || !FUNC4(pkt, TLSEXT_STATUSTYPE_ocsp)
               /* Sub-packet for the ids */
            || !FUNC5(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }
    for (i = 0; i < FUNC9(s->ext.ocsp.ids); i++) {
        unsigned char *idbytes;
        OCSP_RESPID *id = FUNC10(s->ext.ocsp.ids, i);
        int idlen = FUNC7(id, NULL);

        if (idlen <= 0
                   /* Sub-packet for an individual id */
                || !FUNC6(pkt, idlen, &idbytes)
                || FUNC7(id, &idbytes) != idlen) {
            FUNC0(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
    }
    if (!FUNC2(pkt)
            || !FUNC5(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }
    if (s->ext.ocsp.exts) {
        unsigned char *extbytes;
        int extlen = FUNC8(s->ext.ocsp.exts, NULL);

        if (extlen < 0) {
            FUNC0(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
        }
        if (!FUNC1(pkt, extlen, &extbytes)
                || FUNC8(s->ext.ocsp.exts, &extbytes)
                   != extlen) {
            FUNC0(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST,
                     ERR_R_INTERNAL_ERROR);
            return EXT_RETURN_FAIL;
       }
    }
    if (!FUNC2(pkt) || !FUNC2(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_STATUS_REQUEST, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}