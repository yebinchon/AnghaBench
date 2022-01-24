#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_14__ {unsigned int context; } ;
typedef  TYPE_2__ custom_ext_method ;
struct TYPE_17__ {unsigned int context; } ;
struct TYPE_16__ {int /*<<< orphan*/  type; int /*<<< orphan*/  present; } ;
struct TYPE_15__ {TYPE_1__* cert; } ;
struct TYPE_12__ {size_t meths_count; } ;
struct TYPE_13__ {TYPE_10__ custext; } ;
typedef  TYPE_3__ SSL ;
typedef  TYPE_4__ RAW_EXTENSION ;
typedef  int /*<<< orphan*/  ENDPOINT ;

/* Variables and functions */
 int /*<<< orphan*/  ENDPOINT_BOTH ; 
 int /*<<< orphan*/  ENDPOINT_CLIENT ; 
 int /*<<< orphan*/  ENDPOINT_SERVER ; 
 size_t FUNC0 (TYPE_8__*) ; 
 unsigned int SSL_EXT_CLIENT_HELLO ; 
 unsigned int SSL_EXT_TLS1_2_SERVER_HELLO ; 
 TYPE_2__* FUNC1 (TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 TYPE_8__* ext_defs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,unsigned int,unsigned int) ; 

int FUNC4(SSL *s, unsigned int thisctx, RAW_EXTENSION *exts)
{
    size_t i, num_exts, builtin_num = FUNC0(ext_defs), offset;
    RAW_EXTENSION *thisext;
    unsigned int context;
    ENDPOINT role = ENDPOINT_BOTH;

    if ((thisctx & SSL_EXT_CLIENT_HELLO) != 0)
        role = ENDPOINT_SERVER;
    else if ((thisctx & SSL_EXT_TLS1_2_SERVER_HELLO) != 0)
        role = ENDPOINT_CLIENT;

    /* Calculate the number of extensions in the extensions list */
    num_exts = builtin_num + s->cert->custext.meths_count;

    for (thisext = exts, i = 0; i < num_exts; i++, thisext++) {
        if (!thisext->present)
            continue;

        if (i < builtin_num) {
            context = ext_defs[i].context;
        } else {
            custom_ext_method *meth = NULL;

            meth = FUNC1(&s->cert->custext, role, thisext->type,
                                   &offset);
            if (!FUNC2(meth != NULL))
                return 0;
            context = meth->context;
        }

        if (!FUNC3(s, context, thisctx))
            return 0;
    }

    return 1;
}