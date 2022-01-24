#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int shutdown; int init; int num; char* ptr; } ;
struct TYPE_5__ {int /*<<< orphan*/ * buf; int /*<<< orphan*/ * readp; } ;
typedef  TYPE_1__ BIO_BUF_MEM ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(BIO *bi, unsigned long flags)
{
    BIO_BUF_MEM *bb = FUNC3(sizeof(*bb));

    if (bb == NULL)
        return 0;
    if ((bb->buf = FUNC1(flags)) == NULL) {
        FUNC2(bb);
        return 0;
    }
    if ((bb->readp = FUNC3(sizeof(*bb->readp))) == NULL) {
        FUNC0(bb->buf);
        FUNC2(bb);
        return 0;
    }
    *bb->readp = *bb->buf;
    bi->shutdown = 1;
    bi->init = 1;
    bi->num = -1;
    bi->ptr = (char *)bb;
    return 1;
}