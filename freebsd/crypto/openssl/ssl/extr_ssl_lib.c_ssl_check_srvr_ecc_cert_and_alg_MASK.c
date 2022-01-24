#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_9__ {TYPE_3__* s3; } ;
struct TYPE_7__ {TYPE_1__* new_cipher; } ;
struct TYPE_8__ {TYPE_2__ tmp; } ;
struct TYPE_6__ {int algorithm_auth; } ;
typedef  TYPE_4__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  SSL_F_SSL_CHECK_SRVR_ECC_CERT_AND_ALG ; 
 int /*<<< orphan*/  SSL_R_ECC_CERT_NOT_FOR_SIGNING ; 
 int SSL_aECDSA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int X509v3_KU_DIGITAL_SIGNATURE ; 

int FUNC2(X509 *x, SSL *s)
{
    if (s->s3->tmp.new_cipher->algorithm_auth & SSL_aECDSA) {
        /* key usage, if present, must allow signing */
        if (!(FUNC1(x) & X509v3_KU_DIGITAL_SIGNATURE)) {
            FUNC0(SSL_F_SSL_CHECK_SRVR_ECC_CERT_AND_ALG,
                   SSL_R_ECC_CERT_NOT_FOR_SIGNING);
            return 0;
        }
    }
    return 1;                   /* all checks are ok */
}