#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t num; unsigned char const* data; } ;
typedef  TYPE_1__ MDC2_CTX ;

/* Variables and functions */
 size_t MDC2_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,unsigned char const*,size_t) ; 

int FUNC2(MDC2_CTX *c, const unsigned char *in, size_t len)
{
    size_t i, j;

    i = c->num;
    if (i != 0) {
        if (len < MDC2_BLOCK - i) {
            /* partial block */
            FUNC1(&(c->data[i]), in, len);
            c->num += (int)len;
            return 1;
        } else {
            /* filled one */
            j = MDC2_BLOCK - i;
            FUNC1(&(c->data[i]), in, j);
            len -= j;
            in += j;
            c->num = 0;
            FUNC0(c, &(c->data[0]), MDC2_BLOCK);
        }
    }
    i = len & ~((size_t)MDC2_BLOCK - 1);
    if (i > 0)
        FUNC0(c, in, i);
    j = len - i;
    if (j > 0) {
        FUNC1(&(c->data[0]), &(in[i]), j);
        c->num = (int)j;
    }
    return 1;
}