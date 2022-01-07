
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tOptionValue ;
struct TYPE_4__ {TYPE_2__* optCookie; int fOptState; } ;
typedef TYPE_1__ tOptDesc ;
struct TYPE_5__ {int useCt; int apzArgs; } ;
typedef TYPE_2__ tArgList ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ OPARG_TYPE_HIERARCHY ;
 scalar_t__ OPTST_GET_ARGTYPE (int ) ;
 void** VOIDP (int ) ;
 int errno ;
 int * optionGetValue (int const*,char const*) ;

const tOptionValue *
optionFindValue(const tOptDesc * odesc, char const * name, char const * val)
{
    const tOptionValue * res = ((void*)0);

    if ( (odesc == ((void*)0))
       || (OPTST_GET_ARGTYPE(odesc->fOptState) != OPARG_TYPE_HIERARCHY)) {
        errno = EINVAL;
    }

    else if (odesc->optCookie == ((void*)0)) {
        errno = ENOENT;
    }

    else do {
        tArgList * argl = odesc->optCookie;
        int argct = argl->useCt;
        const void ** poptv = VOIDP(argl->apzArgs);

        if (argct == 0) {
            errno = ENOENT;
            break;
        }

        if (name == ((void*)0)) {
            res = (const tOptionValue *)*poptv;
            break;
        }

        while (--argct >= 0) {
            const tOptionValue * ov = *(poptv++);
            const tOptionValue * rv = optionGetValue(ov, name);

            if (rv == ((void*)0))
                continue;

            if (val == ((void*)0)) {
                res = ov;
                break;
            }
        }
        if (res == ((void*)0))
            errno = ENOENT;
    } while (0);

    return res;
}
