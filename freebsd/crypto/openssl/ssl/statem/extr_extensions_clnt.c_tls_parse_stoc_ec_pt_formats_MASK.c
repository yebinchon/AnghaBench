#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_5__ {size_t peer_ecpointformats_len; int /*<<< orphan*/ * peer_ecpointformats; } ;
struct TYPE_6__ {TYPE_1__ ext; int /*<<< orphan*/  hit; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_STOC_EC_PT_FORMATS ; 
 int /*<<< orphan*/  SSL_R_BAD_EXTENSION ; 
 int /*<<< orphan*/  SSL_R_BAD_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(SSL *s, PACKET *pkt, unsigned int context,
                                 X509 *x, size_t chainidx)
{
    size_t ecpointformats_len;
    PACKET ecptformatlist;

    if (!FUNC2(pkt, &ecptformatlist)) {
        FUNC5(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PARSE_STOC_EC_PT_FORMATS,
                 SSL_R_BAD_EXTENSION);
        return 0;
    }
    if (!s->hit) {
        ecpointformats_len = FUNC4(&ecptformatlist);
        if (ecpointformats_len == 0) {
            FUNC5(s, SSL_AD_DECODE_ERROR,
                     SSL_F_TLS_PARSE_STOC_EC_PT_FORMATS, SSL_R_BAD_LENGTH);
            return 0;
        }

        s->ext.peer_ecpointformats_len = 0;
        FUNC0(s->ext.peer_ecpointformats);
        s->ext.peer_ecpointformats = FUNC1(ecpointformats_len);
        if (s->ext.peer_ecpointformats == NULL) {
            FUNC5(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PARSE_STOC_EC_PT_FORMATS, ERR_R_INTERNAL_ERROR);
            return 0;
        }

        s->ext.peer_ecpointformats_len = ecpointformats_len;

        if (!FUNC3(&ecptformatlist,
                               s->ext.peer_ecpointformats,
                               ecpointformats_len)) {
            FUNC5(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PARSE_STOC_EC_PT_FORMATS, ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }

    return 1;
}