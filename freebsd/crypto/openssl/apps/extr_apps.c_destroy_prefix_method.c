
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_meth_free (int *) ;
 int * prefix_method ;

void destroy_prefix_method(void)
{
    BIO_meth_free(prefix_method);
    prefix_method = ((void*)0);
}
