#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* cert; TYPE_2__* s3; } ;
struct TYPE_10__ {int cert_flags; } ;
struct TYPE_8__ {int /*<<< orphan*/ * sigalg; } ;
struct TYPE_9__ {TYPE_1__ tmp; } ;
typedef  TYPE_4__ SSL ;

/* Variables and functions */
 int SSL_CERT_FLAGS_CHECK_TLS_STRICT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(SSL *s)
{
    /* If no suitable signature algorithm can't use certificate */
    if (!FUNC1(s, 0) || s->s3->tmp.sigalg == NULL)
        return 0;
    /*
     * If strict mode check suitability of chain before using it. This also
     * adjusts suite B digest if necessary.
     */
    if (s->cert->cert_flags & SSL_CERT_FLAGS_CHECK_TLS_STRICT &&
        !FUNC0(s, NULL, NULL, NULL, -2))
        return 0;
    return 1;
}