#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  dlen; int /*<<< orphan*/  data; int /*<<< orphan*/  mtype; int /*<<< orphan*/  selector; int /*<<< orphan*/  usage; } ;
typedef  TYPE_2__ danetls_record ;
struct TYPE_13__ {int /*<<< orphan*/ * trecs; int /*<<< orphan*/ * dctx; int /*<<< orphan*/  flags; } ;
struct TYPE_12__ {TYPE_7__ dane; TYPE_1__* ctx; } ;
struct TYPE_10__ {int /*<<< orphan*/  dane; } ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  SSL_F_SSL_DANE_DUP ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(SSL *to, SSL *from)
{
    int num;
    int i;

    if (!FUNC0(&from->dane))
        return 1;

    num = FUNC5(from->dane.trecs);
    FUNC3(&to->dane);
    to->dane.flags = from->dane.flags;
    to->dane.dctx = &to->ctx->dane;
    to->dane.trecs = FUNC4(NULL, num);

    if (to->dane.trecs == NULL) {
        FUNC2(SSL_F_SSL_DANE_DUP, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    for (i = 0; i < num; ++i) {
        danetls_record *t = FUNC6(from->dane.trecs, i);

        if (FUNC1(to, t->usage, t->selector, t->mtype,
                              t->data, t->dlen) <= 0)
            return 0;
    }
    return 1;
}