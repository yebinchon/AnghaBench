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
typedef  int /*<<< orphan*/  tOptionValue ;
struct TYPE_4__ {TYPE_2__* optCookie; int /*<<< orphan*/  fOptState; } ;
typedef  TYPE_1__ tOptDesc ;
struct TYPE_5__ {int useCt; int /*<<< orphan*/  apzArgs; } ;
typedef  TYPE_2__ tArgList ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ OPARG_TYPE_HIERARCHY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void** FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,char const*) ; 

const tOptionValue *
FUNC3(const tOptDesc * odesc, char const * name, char const * val)
{
    const tOptionValue * res = NULL;

    if (  (odesc == NULL)
       || (FUNC0(odesc->fOptState) != OPARG_TYPE_HIERARCHY))  {
        errno = EINVAL;
    }

    else if (odesc->optCookie == NULL) {
        errno = ENOENT;
    }

    else do {
        tArgList *    argl  = odesc->optCookie;
        int           argct = argl->useCt;
        const void ** poptv = FUNC1(argl->apzArgs);

        if (argct == 0) {
            errno = ENOENT;
            break;
        }

        if (name == NULL) {
            res = (const tOptionValue *)*poptv;
            break;
        }

        while (--argct >= 0) {
            const tOptionValue * ov = *(poptv++);
            const tOptionValue * rv = FUNC2(ov, name);

            if (rv == NULL)
                continue;

            if (val == NULL) {
                res = ov;
                break;
            }
        }
        if (res == NULL)
            errno = ENOENT;
    } while (false);

    return res;
}