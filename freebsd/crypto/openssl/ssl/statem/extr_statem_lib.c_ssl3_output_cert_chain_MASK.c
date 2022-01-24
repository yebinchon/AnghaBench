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
typedef  int /*<<< orphan*/  WPACKET ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  CERT_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL3_OUTPUT_CERT_CHAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

unsigned long FUNC4(SSL *s, WPACKET *pkt, CERT_PKEY *cpk)
{
    if (!FUNC2(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_OUTPUT_CERT_CHAIN,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    if (!FUNC3(s, pkt, cpk))
        return 0;

    if (!FUNC1(pkt)) {
        FUNC0(s, SSL_AD_INTERNAL_ERROR, SSL_F_SSL3_OUTPUT_CERT_CHAIN,
                 ERR_R_INTERNAL_ERROR);
        return 0;
    }

    return 1;
}