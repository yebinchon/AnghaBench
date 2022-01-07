
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {long flags; TYPE_1__* meth; } ;
struct TYPE_5__ {long (* dso_ctrl ) (TYPE_2__*,int,long,void*) ;} ;
typedef TYPE_2__ DSO ;





 int DSO_F_DSO_CTRL ;
 int DSO_R_UNSUPPORTED ;
 int DSOerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 long stub1 (TYPE_2__*,int,long,void*) ;

long DSO_ctrl(DSO *dso, int cmd, long larg, void *parg)
{
    if (dso == ((void*)0)) {
        DSOerr(DSO_F_DSO_CTRL, ERR_R_PASSED_NULL_PARAMETER);
        return -1;
    }




    switch (cmd) {
    case 130:
        return dso->flags;
    case 128:
        dso->flags = (int)larg;
        return 0;
    case 129:
        dso->flags |= (int)larg;
        return 0;
    default:
        break;
    }
    if ((dso->meth == ((void*)0)) || (dso->meth->dso_ctrl == ((void*)0))) {
        DSOerr(DSO_F_DSO_CTRL, DSO_R_UNSUPPORTED);
        return -1;
    }
    return dso->meth->dso_ctrl(dso, cmd, larg, parg);
}
