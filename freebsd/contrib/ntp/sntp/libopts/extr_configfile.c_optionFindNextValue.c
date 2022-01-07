
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

tOptionValue const *
optionFindNextValue(const tOptDesc * odesc, const tOptionValue * pPrevVal,
                    char const * pzName, char const * pzVal)
{
    bool old_found = 0;
    const tOptionValue * res = ((void*)0);

    (void)pzName;
    (void)pzVal;

    if ( (odesc == ((void*)0))
       || (OPTST_GET_ARGTYPE(odesc->fOptState) != OPARG_TYPE_HIERARCHY)) {
        errno = EINVAL;
    }

    else if (odesc->optCookie == ((void*)0)) {
        errno = ENOENT;
    }

    else do {
        tArgList * argl = odesc->optCookie;
        int ct = argl->useCt;
        const void ** poptv = VOIDP(argl->apzArgs);

        while (--ct >= 0) {
            const tOptionValue * pOV = *(poptv++);
            if (old_found) {
                res = pOV;
                break;
            }
            if (pOV == pPrevVal)
                old_found = 1;
        }
        if (res == ((void*)0))
            errno = ENOENT;
    } while (0);

    return res;
}
