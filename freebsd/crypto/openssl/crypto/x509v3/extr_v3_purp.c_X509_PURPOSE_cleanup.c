
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sk_X509_PURPOSE_pop_free (int *,int ) ;
 int * xptable ;
 int xptable_free ;

void X509_PURPOSE_cleanup(void)
{
    sk_X509_PURPOSE_pop_free(xptable, xptable_free);
    xptable = ((void*)0);
}
