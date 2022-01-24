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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_7__ {size_t client_sigalgslen; size_t conf_sigalgslen; int /*<<< orphan*/ * conf_sigalgs; int /*<<< orphan*/ * client_sigalgs; } ;
struct TYPE_6__ {int hash; int sig; int /*<<< orphan*/  sigalg; } ;
typedef  TYPE_1__ SIGALG_LOOKUP ;
typedef  TYPE_2__ CERT ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 size_t FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  SSL_F_TLS1_SET_SIGALGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* sigalg_lookup_tbl ; 

int FUNC4(CERT *c, const int *psig_nids, size_t salglen, int client)
{
    uint16_t *sigalgs, *sptr;
    size_t i;

    if (salglen & 1)
        return 0;
    if ((sigalgs = FUNC1((salglen / 2) * sizeof(*sigalgs))) == NULL) {
        FUNC3(SSL_F_TLS1_SET_SIGALGS, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    for (i = 0, sptr = sigalgs; i < salglen; i += 2) {
        size_t j;
        const SIGALG_LOOKUP *curr;
        int md_id = *psig_nids++;
        int sig_id = *psig_nids++;

        for (j = 0, curr = sigalg_lookup_tbl; j < FUNC2(sigalg_lookup_tbl);
             j++, curr++) {
            if (curr->hash == md_id && curr->sig == sig_id) {
                *sptr++ = curr->sigalg;
                break;
            }
        }

        if (j == FUNC2(sigalg_lookup_tbl))
            goto err;
    }

    if (client) {
        FUNC0(c->client_sigalgs);
        c->client_sigalgs = sigalgs;
        c->client_sigalgslen = salglen / 2;
    } else {
        FUNC0(c->conf_sigalgs);
        c->conf_sigalgs = sigalgs;
        c->conf_sigalgslen = salglen / 2;
    }

    return 1;

 err:
    FUNC0(sigalgs);
    return 0;
}