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
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_6__ {int /*<<< orphan*/  resp_len; int /*<<< orphan*/  resp; } ;
struct TYPE_7__ {TYPE_1__ ocsp; int /*<<< orphan*/  status_type; } ;
struct TYPE_8__ {TYPE_2__ ext; } ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CERT_STATUS_BODY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(SSL *s, WPACKET *pkt)
{
    if (!FUNC1(pkt, s->ext.status_type)
            || !FUNC2(pkt, s->ext.ocsp.resp,
                                       s->ext.ocsp.resp_len)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_CONSTRUCT_CERT_STATUS_BODY,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}