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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_7__ {int /*<<< orphan*/  sig_idx; } ;
struct TYPE_6__ {int amask; } ;
typedef  TYPE_1__ SSL_CERT_LOOKUP ;
typedef  int /*<<< orphan*/  SSL ;
typedef  TYPE_2__ SIGALG_LOOKUP ;

/* Variables and functions */
 int SSL_aDSS ; 
 int SSL_aECDSA ; 
 int SSL_aRSA ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__ const*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/  const) ; 

void FUNC4(uint32_t *pmask_a, SSL *s, int op)
{
    const uint16_t *sigalgs;
    size_t i, sigalgslen;
    uint32_t disabled_mask = SSL_aRSA | SSL_aDSS | SSL_aECDSA;
    /*
     * Go through all signature algorithms seeing if we support any
     * in disabled_mask.
     */
    sigalgslen = FUNC1(s, 1, &sigalgs);
    for (i = 0; i < sigalgslen; i++, sigalgs++) {
        const SIGALG_LOOKUP *lu = FUNC3(*sigalgs);
        const SSL_CERT_LOOKUP *clu;

        if (lu == NULL)
            continue;

        clu = FUNC0(lu->sig_idx);
	if (clu == NULL)
		continue;

        /* If algorithm is disabled see if we can enable it */
        if ((clu->amask & disabled_mask) != 0
                && FUNC2(s, op, lu))
            disabled_mask &= ~clu->amask;
    }
    *pmask_a |= disabled_mask;
}