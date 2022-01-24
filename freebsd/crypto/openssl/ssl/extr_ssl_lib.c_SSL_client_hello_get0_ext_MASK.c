#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned int type; int /*<<< orphan*/  data; scalar_t__ present; } ;
struct TYPE_6__ {TYPE_1__* clienthello; } ;
struct TYPE_5__ {size_t pre_proc_exts_len; TYPE_3__* pre_proc_exts; } ;
typedef  TYPE_2__ SSL ;
typedef  TYPE_3__ RAW_EXTENSION ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(SSL *s, unsigned int type, const unsigned char **out,
                       size_t *outlen)
{
    size_t i;
    RAW_EXTENSION *r;

    if (s->clienthello == NULL)
        return 0;
    for (i = 0; i < s->clienthello->pre_proc_exts_len; ++i) {
        r = s->clienthello->pre_proc_exts + i;
        if (r->present && r->type == type) {
            if (out != NULL)
                *out = FUNC0(&r->data);
            if (outlen != NULL)
                *outlen = FUNC1(&r->data);
            return 1;
        }
    }
    return 0;
}