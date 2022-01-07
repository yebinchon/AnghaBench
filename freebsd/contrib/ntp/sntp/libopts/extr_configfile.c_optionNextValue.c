
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* nestVal; } ;
struct TYPE_8__ {scalar_t__ valType; TYPE_1__ v; } ;
typedef TYPE_2__ tOptionValue ;
struct TYPE_9__ {int useCt; int apzArgs; } ;
typedef TYPE_3__ tArgList ;


 void* EINVAL ;
 int ENOENT ;
 scalar_t__ OPARG_TYPE_HIERARCHY ;
 void** VOIDP (int ) ;
 int errno ;

tOptionValue const *
optionNextValue(tOptionValue const * ov_list,tOptionValue const * oov )
{
    tArgList * arg_list;
    const tOptionValue * res = ((void*)0);
    int err = EINVAL;

    if ((ov_list == ((void*)0)) || (ov_list->valType != OPARG_TYPE_HIERARCHY)) {
        errno = EINVAL;
        return ((void*)0);
    }
    arg_list = ov_list->v.nestVal;
    {
        int ct = arg_list->useCt;
        const void ** o_list = VOIDP(arg_list->apzArgs);

        while (ct-- > 0) {
            const tOptionValue * nov = *(o_list++);
            if (nov == oov) {
                if (ct == 0) {
                    err = ENOENT;

                } else {
                    err = 0;
                    res = (const tOptionValue *)*o_list;
                }
                break;
            }
        }
    }
    if (err != 0)
        errno = err;
    return res;
}
