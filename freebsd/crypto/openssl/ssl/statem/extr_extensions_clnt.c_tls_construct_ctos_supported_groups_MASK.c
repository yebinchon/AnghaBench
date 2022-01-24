#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_NOT_SENT ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS ; 
 int /*<<< orphan*/  SSL_SECOP_CURVE_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_TYPE_supported_groups ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

EXT_RETURN FUNC7(SSL *s, WPACKET *pkt,
                                               unsigned int context, X509 *x,
                                               size_t chainidx)
{
    const uint16_t *pgroups = NULL;
    size_t num_groups = 0, i;

    if (!FUNC6(s))
        return EXT_RETURN_NOT_SENT;

    /*
     * Add TLS extension supported_groups to the ClientHello message
     */
    /* TODO(TLS1.3): Add support for DHE groups */
    FUNC4(s, &pgroups, &num_groups);

    if (!FUNC2(pkt, TLSEXT_TYPE_supported_groups)
               /* Sub-packet for supported_groups extension */
            || !FUNC3(pkt)
            || !FUNC3(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }
    /* Copy curve ID if supported */
    for (i = 0; i < num_groups; i++) {
        uint16_t ctmp = pgroups[i];

        if (FUNC5(s, ctmp, SSL_SECOP_CURVE_SUPPORTED)) {
            if (!FUNC2(pkt, ctmp)) {
                    FUNC0(s, SSL_AD_INTERNAL_ERROR,
                             SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS,
                             ERR_R_INTERNAL_ERROR);
                    return EXT_RETURN_FAIL;
                }
        }
    }
    if (!FUNC1(pkt) || !FUNC1(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_CTOS_SUPPORTED_GROUPS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}