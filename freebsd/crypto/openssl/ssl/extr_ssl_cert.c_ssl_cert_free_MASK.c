#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; struct TYPE_6__* psk_identity_hint; int /*<<< orphan*/  custext; int /*<<< orphan*/  chain_store; int /*<<< orphan*/  verify_store; struct TYPE_6__* ctype; struct TYPE_6__* client_sigalgs; struct TYPE_6__* conf_sigalgs; int /*<<< orphan*/  dh_tmp; int /*<<< orphan*/  references; } ;
typedef  TYPE_1__ CERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9(CERT *c)
{
    int i;

    if (c == NULL)
        return;
    FUNC0(&c->references, &i, c->lock);
    FUNC5("CERT", c);
    if (i > 0)
        return;
    FUNC4(i < 0);

#ifndef OPENSSL_NO_DH
    FUNC2(c->dh_tmp);
#endif

    FUNC8(c);
    FUNC3(c->conf_sigalgs);
    FUNC3(c->client_sigalgs);
    FUNC3(c->ctype);
    FUNC6(c->verify_store);
    FUNC6(c->chain_store);
    FUNC7(&c->custext);
#ifndef OPENSSL_NO_PSK
    FUNC3(c->psk_identity_hint);
#endif
    FUNC1(c->lock);
    FUNC3(c);
}