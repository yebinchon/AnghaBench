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
struct TYPE_6__ {int /*<<< orphan*/ * next_bio; scalar_t__ ptr; } ;
typedef  int /*<<< orphan*/  BIO_ACCEPT ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(BIO *b, char *out, int outl)
{
    int ret = 0;
    BIO_ACCEPT *data;

    FUNC0(b);
    data = (BIO_ACCEPT *)b->ptr;

    while (b->next_bio == NULL) {
        ret = FUNC3(b, data);
        if (ret <= 0)
            return ret;
    }

    ret = FUNC2(b->next_bio, out, outl);
    FUNC1(b);
    return ret;
}