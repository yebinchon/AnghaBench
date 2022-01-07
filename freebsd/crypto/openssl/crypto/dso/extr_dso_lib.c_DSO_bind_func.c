
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* meth; } ;
struct TYPE_5__ {int * (* dso_bind_func ) (TYPE_2__*,char const*) ;} ;
typedef int * DSO_FUNC_TYPE ;
typedef TYPE_2__ DSO ;


 int DSO_F_DSO_BIND_FUNC ;
 int DSO_R_SYM_FAILURE ;
 int DSO_R_UNSUPPORTED ;
 int DSOerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int * stub1 (TYPE_2__*,char const*) ;

DSO_FUNC_TYPE DSO_bind_func(DSO *dso, const char *symname)
{
    DSO_FUNC_TYPE ret = ((void*)0);

    if ((dso == ((void*)0)) || (symname == ((void*)0))) {
        DSOerr(DSO_F_DSO_BIND_FUNC, ERR_R_PASSED_NULL_PARAMETER);
        return ((void*)0);
    }
    if (dso->meth->dso_bind_func == ((void*)0)) {
        DSOerr(DSO_F_DSO_BIND_FUNC, DSO_R_UNSUPPORTED);
        return ((void*)0);
    }
    if ((ret = dso->meth->dso_bind_func(dso, symname)) == ((void*)0)) {
        DSOerr(DSO_F_DSO_BIND_FUNC, DSO_R_SYM_FAILURE);
        return ((void*)0);
    }

    return ret;
}
