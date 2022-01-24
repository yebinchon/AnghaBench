#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  (* remove_session_cb ) (TYPE_2__*,TYPE_1__*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  sessions; } ;
struct TYPE_14__ {scalar_t__ session_id_length; int not_resumable; } ;
typedef  TYPE_1__ SSL_SESSION ;
typedef  TYPE_2__ SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(SSL_CTX *ctx, SSL_SESSION *c, int lck)
{
    SSL_SESSION *r;
    int ret = 0;

    if ((c != NULL) && (c->session_id_length != 0)) {
        if (lck)
            FUNC1(ctx->lock);
        if ((r = FUNC5(ctx->sessions, c)) != NULL) {
            ret = 1;
            r = FUNC4(ctx->sessions, r);
            FUNC3(ctx, r);
        }
        c->not_resumable = 1;

        if (lck)
            FUNC0(ctx->lock);

        if (ctx->remove_session_cb != NULL)
            ctx->remove_session_cb(ctx, c);

        if (ret)
            FUNC2(r);
    } else
        ret = 0;
    return ret;
}