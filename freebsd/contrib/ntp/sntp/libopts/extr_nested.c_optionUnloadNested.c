
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nestVal; } ;
struct TYPE_6__ {scalar_t__ valType; TYPE_1__ v; } ;
typedef TYPE_2__ tOptionValue ;


 int AGFREE (TYPE_2__ const*) ;
 int EINVAL ;
 scalar_t__ OPARG_TYPE_HIERARCHY ;
 int errno ;
 int unload_arg_list (int ) ;

void
optionUnloadNested(tOptionValue const * opt_val)
{
    if (opt_val == ((void*)0)) return;
    if (opt_val->valType != OPARG_TYPE_HIERARCHY) {
        errno = EINVAL;
        return;
    }

    unload_arg_list(opt_val->v.nestVal);

    AGFREE(opt_val);
}
