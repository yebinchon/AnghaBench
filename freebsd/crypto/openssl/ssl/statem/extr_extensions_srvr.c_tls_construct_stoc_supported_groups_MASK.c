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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_8__ {TYPE_1__* s3; } ;
struct TYPE_7__ {scalar_t__ group_id; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS ; 
 int /*<<< orphan*/  SSL_SECOP_CURVE_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TLSEXT_TYPE_supported_groups ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__ const**,size_t*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 

EXT_RETURN FUNC6(SSL *s, WPACKET *pkt,
                                               unsigned int context, X509 *x,
                                               size_t chainidx)
{
    const uint16_t *groups;
    size_t numgroups, i, first = 1;

    /* s->s3->group_id is non zero if we accepted a key_share */
    if (s->s3->group_id == 0)
        return EXT_RETURN_NOT_SENT;

    /* Get our list of supported groups */
    FUNC4(s, &groups, &numgroups);
    if (numgroups == 0) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS, ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    /* Copy group ID if supported */
    for (i = 0; i < numgroups; i++) {
        uint16_t group = groups[i];

        if (FUNC5(s, group, SSL_SECOP_CURVE_SUPPORTED)) {
            if (first) {
                /*
                 * Check if the client is already using our preferred group. If
                 * so we don't need to add this extension
                 */
                if (s->s3->group_id == group)
                    return EXT_RETURN_NOT_SENT;

                /* Add extension header */
                if (!FUNC2(pkt, TLSEXT_TYPE_supported_groups)
                           /* Sub-packet for supported_groups extension */
                        || !FUNC3(pkt)
                        || !FUNC3(pkt)) {
                    FUNC0(s, SSL_AD_INTERNAL_ERROR,
                             SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS,
                             ERR_R_INTERNAL_ERROR);
                    return EXT_RETURN_FAIL;
                }

                first = 0;
            }
            if (!FUNC2(pkt, group)) {
                    FUNC0(s, SSL_AD_INTERNAL_ERROR,
                             SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS,
                             ERR_R_INTERNAL_ERROR);
                    return EXT_RETURN_FAIL;
                }
        }
    }

    if (!FUNC1(pkt) || !FUNC1(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_GROUPS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}