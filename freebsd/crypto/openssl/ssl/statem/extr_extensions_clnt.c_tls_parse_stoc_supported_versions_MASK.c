#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_4__ {unsigned int version; } ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 unsigned int SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST ; 
 int /*<<< orphan*/  SSL_F_TLS_PARSE_STOC_SUPPORTED_VERSIONS ; 
 int /*<<< orphan*/  SSL_R_BAD_PROTOCOL_VERSION_NUMBER ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int TLS1_3_VERSION ; 

int FUNC3(SSL *s, PACKET *pkt, unsigned int context,
                                      X509 *x, size_t chainidx)
{
    unsigned int version;

    if (!FUNC0(pkt, &version)
            || FUNC1(pkt) != 0) {
        FUNC2(s, SSL_AD_DECODE_ERROR,
                 SSL_F_TLS_PARSE_STOC_SUPPORTED_VERSIONS,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }

    /*
     * The only protocol version we support which is valid in this extension in
     * a ServerHello is TLSv1.3 therefore we shouldn't be getting anything else.
     */
    if (version != TLS1_3_VERSION) {
        FUNC2(s, SSL_AD_ILLEGAL_PARAMETER,
                 SSL_F_TLS_PARSE_STOC_SUPPORTED_VERSIONS,
                 SSL_R_BAD_PROTOCOL_VERSION_NUMBER);
        return 0;
    }

    /* We ignore this extension for HRRs except to sanity check it */
    if (context == SSL_EXT_TLS1_3_HELLO_RETRY_REQUEST)
        return 1;

    /* We just set it here. We validate it in ssl_choose_client_version */
    s->version = version;

    return 1;
}