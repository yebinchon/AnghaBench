
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* (* globallookup ) (char const*) ;} ;
typedef TYPE_1__ DSO_METHOD ;


 int DSO_F_DSO_GLOBAL_LOOKUP ;
 TYPE_1__* DSO_METHOD_openssl () ;
 int DSO_R_UNSUPPORTED ;
 int DSOerr (int ,int ) ;
 TYPE_1__* default_DSO_meth ;
 void* stub1 (char const*) ;

void *DSO_global_lookup(const char *name)
{
    DSO_METHOD *meth = default_DSO_meth;
    if (meth == ((void*)0))
        meth = DSO_METHOD_openssl();
    if (meth->globallookup == ((void*)0)) {
        DSOerr(DSO_F_DSO_GLOBAL_LOOKUP, DSO_R_UNSUPPORTED);
        return ((void*)0);
    }
    return (*meth->globallookup) (name);
}
