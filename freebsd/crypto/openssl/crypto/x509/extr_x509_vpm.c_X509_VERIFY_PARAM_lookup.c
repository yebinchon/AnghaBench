
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* name; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;


 TYPE_1__ const* OBJ_bsearch_table (TYPE_1__*,int ,int ) ;
 int OSSL_NELEM (int ) ;
 int default_table ;
 int * param_table ;
 int sk_X509_VERIFY_PARAM_find (int *,TYPE_1__*) ;
 TYPE_1__ const* sk_X509_VERIFY_PARAM_value (int *,int) ;

const X509_VERIFY_PARAM *X509_VERIFY_PARAM_lookup(const char *name)
{
    int idx;
    X509_VERIFY_PARAM pm;

    pm.name = (char *)name;
    if (param_table != ((void*)0)) {
        idx = sk_X509_VERIFY_PARAM_find(param_table, &pm);
        if (idx >= 0)
            return sk_X509_VERIFY_PARAM_value(param_table, idx);
    }
    return OBJ_bsearch_table(&pm, default_table, OSSL_NELEM(default_table));
}
