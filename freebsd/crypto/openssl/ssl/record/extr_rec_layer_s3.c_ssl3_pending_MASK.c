#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ rstate; int /*<<< orphan*/ * rrec; } ;
struct TYPE_4__ {TYPE_3__ rlayer; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ SSL3_RT_APPLICATION_DATA ; 
 scalar_t__ SSL_ST_READ_BODY ; 

size_t FUNC3(const SSL *s)
{
    size_t i, num = 0;

    if (s->rlayer.rstate == SSL_ST_READ_BODY)
        return 0;

    for (i = 0; i < FUNC0(&s->rlayer); i++) {
        if (FUNC2(&s->rlayer.rrec[i])
            != SSL3_RT_APPLICATION_DATA)
            return 0;
        num += FUNC1(&s->rlayer.rrec[i]);
    }

    return num;
}