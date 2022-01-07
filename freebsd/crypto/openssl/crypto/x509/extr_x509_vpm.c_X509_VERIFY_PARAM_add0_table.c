
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_VERIFY_PARAM ;


 int X509_VERIFY_PARAM_free (int *) ;
 int param_cmp ;
 int * param_table ;
 int * sk_X509_VERIFY_PARAM_delete (int *,int) ;
 int sk_X509_VERIFY_PARAM_find (int *,int *) ;
 int * sk_X509_VERIFY_PARAM_new (int ) ;
 int sk_X509_VERIFY_PARAM_push (int *,int *) ;

int X509_VERIFY_PARAM_add0_table(X509_VERIFY_PARAM *param)
{
    int idx;
    X509_VERIFY_PARAM *ptmp;
    if (param_table == ((void*)0)) {
        param_table = sk_X509_VERIFY_PARAM_new(param_cmp);
        if (param_table == ((void*)0))
            return 0;
    } else {
        idx = sk_X509_VERIFY_PARAM_find(param_table, param);
        if (idx >= 0) {
            ptmp = sk_X509_VERIFY_PARAM_delete(param_table, idx);
            X509_VERIFY_PARAM_free(ptmp);
        }
    }
    if (!sk_X509_VERIFY_PARAM_push(param_table, param))
        return 0;
    return 1;
}
