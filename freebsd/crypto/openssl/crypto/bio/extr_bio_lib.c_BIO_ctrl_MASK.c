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
struct TYPE_7__ {int /*<<< orphan*/ * callback_ex; int /*<<< orphan*/ * callback; TYPE_1__* method; } ;
struct TYPE_6__ {long (* ctrl ) (TYPE_2__*,int,long,void*) ;} ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int BIO_CB_CTRL ; 
 int BIO_CB_RETURN ; 
 int /*<<< orphan*/  BIO_F_BIO_CTRL ; 
 int /*<<< orphan*/  BIO_R_UNSUPPORTED_METHOD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC1 (TYPE_2__*,int,void*,int /*<<< orphan*/ ,int,long,long,int /*<<< orphan*/ *) ; 
 long FUNC2 (TYPE_2__*,int,long,void*) ; 

long FUNC3(BIO *b, int cmd, long larg, void *parg)
{
    long ret;

    if (b == NULL)
        return 0;

    if ((b->method == NULL) || (b->method->ctrl == NULL)) {
        FUNC0(BIO_F_BIO_CTRL, BIO_R_UNSUPPORTED_METHOD);
        return -2;
    }

    if (b->callback != NULL || b->callback_ex != NULL) {
        ret = FUNC1(b, BIO_CB_CTRL, parg, 0, cmd, larg, 1L, NULL);
        if (ret <= 0)
            return ret;
    }

    ret = b->method->ctrl(b, cmd, larg, parg);

    if (b->callback != NULL || b->callback_ex != NULL)
        ret = FUNC1(b, BIO_CB_CTRL | BIO_CB_RETURN, parg, 0, cmd,
                                larg, ret, NULL);

    return ret;
}