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
struct TYPE_6__ {int /*<<< orphan*/ * h; scalar_t__ buflen; scalar_t__ buf; } ;
typedef  TYPE_1__ BLAKE2B_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ) ; 

int FUNC5(unsigned char *md, BLAKE2B_CTX *c)
{
    int i;

    FUNC2(c);
    /* Padding */
    FUNC3(c->buf + c->buflen, 0, sizeof(c->buf) - c->buflen);
    FUNC1(c, c->buf, c->buflen);

    /* Output full hash to message digest */
    for (i = 0; i < 8; ++i) {
        FUNC4(md + sizeof(c->h[i]) * i, c->h[i]);
    }

    FUNC0(c, sizeof(BLAKE2B_CTX));
    return 1;
}