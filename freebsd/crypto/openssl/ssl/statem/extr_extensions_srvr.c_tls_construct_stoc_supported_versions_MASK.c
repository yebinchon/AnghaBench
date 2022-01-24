#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_5__ {int /*<<< orphan*/  version; } ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  EXT_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EXT_RETURN_FAIL ; 
 int /*<<< orphan*/  EXT_RETURN_SENT ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_VERSIONS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLSEXT_TYPE_supported_versions ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

EXT_RETURN FUNC6(SSL *s, WPACKET *pkt,
                                                 unsigned int context, X509 *x,
                                                 size_t chainidx)
{
    if (!FUNC5(FUNC0(s))) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_VERSIONS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    if (!FUNC3(pkt, TLSEXT_TYPE_supported_versions)
            || !FUNC4(pkt)
            || !FUNC3(pkt, s->version)
            || !FUNC2(pkt)) {
        FUNC1(s, SSL_AD_INTERNAL_ERROR,
                 SSL_F_TLS_CONSTRUCT_STOC_SUPPORTED_VERSIONS,
                 ERR_R_INTERNAL_ERROR);
        return EXT_RETURN_FAIL;
    }

    return EXT_RETURN_SENT;
}