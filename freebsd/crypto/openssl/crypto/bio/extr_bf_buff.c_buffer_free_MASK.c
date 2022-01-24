#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ flags; scalar_t__ init; int /*<<< orphan*/ * ptr; } ;
struct TYPE_4__ {int /*<<< orphan*/ * obuf; int /*<<< orphan*/ * ibuf; } ;
typedef  TYPE_1__ BIO_F_BUFFER_CTX ;
typedef  TYPE_2__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(BIO *a)
{
    BIO_F_BUFFER_CTX *b;

    if (a == NULL)
        return 0;
    b = (BIO_F_BUFFER_CTX *)a->ptr;
    FUNC0(b->ibuf);
    FUNC0(b->obuf);
    FUNC0(a->ptr);
    a->ptr = NULL;
    a->init = 0;
    a->flags = 0;
    return 1;
}