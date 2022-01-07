
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X509_VERIFY_PARAM_free ;
 int * param_table ;
 int sk_X509_VERIFY_PARAM_pop_free (int *,int ) ;

void X509_VERIFY_PARAM_table_cleanup(void)
{
    sk_X509_VERIFY_PARAM_pop_free(param_table, X509_VERIFY_PARAM_free);
    param_table = ((void*)0);
}
