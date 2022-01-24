#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* s3; int /*<<< orphan*/ * pha_dgst; } ;
struct TYPE_6__ {int /*<<< orphan*/  handshake_dgst; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS13_SAVE_HANDSHAKE_DIGEST_FOR_PHA ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

int FUNC4(SSL *s)
{
    if (s->pha_dgst == NULL) {
        if (!FUNC3(s, 1))
            /* SSLfatal() already called */
            return 0;

        s->pha_dgst = FUNC1();
        if (s->pha_dgst == NULL) {
            FUNC2(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS13_SAVE_HANDSHAKE_DIGEST_FOR_PHA,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
        if (!FUNC0(s->pha_dgst,
                                s->s3->handshake_dgst)) {
            FUNC2(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS13_SAVE_HANDSHAKE_DIGEST_FOR_PHA,
                     ERR_R_INTERNAL_ERROR);
            return 0;
        }
    }
    return 1;
}