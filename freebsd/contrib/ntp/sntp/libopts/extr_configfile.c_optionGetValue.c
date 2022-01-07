
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* nestVal; } ;
struct TYPE_7__ {scalar_t__ valType; int pzName; TYPE_1__ v; } ;
typedef TYPE_2__ tOptionValue ;
struct TYPE_8__ {int useCt; int apzArgs; } ;
typedef TYPE_3__ tArgList ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ OPARG_TYPE_HIERARCHY ;
 void** VOIDP (int ) ;
 int errno ;
 scalar_t__ strcmp (int ,char const*) ;

tOptionValue const *
optionGetValue(tOptionValue const * oov, char const * vname)
{
    tArgList * arg_list;
    const tOptionValue * res = ((void*)0);

    if ((oov == ((void*)0)) || (oov->valType != OPARG_TYPE_HIERARCHY)) {
        errno = EINVAL;
        return res;
    }
    arg_list = oov->v.nestVal;

    if (arg_list->useCt > 0) {
        int ct = arg_list->useCt;
        const void ** ovlist = VOIDP(arg_list->apzArgs);

        if (vname == ((void*)0)) {
            res = (const tOptionValue *)*ovlist;

        } else do {
            const tOptionValue * opt_val = *(ovlist++);
            if (strcmp(opt_val->pzName, vname) == 0) {
                res = opt_val;
                break;
            }
        } while (--ct > 0);
    }
    if (res == ((void*)0))
        errno = ENOENT;
    return res;
}
