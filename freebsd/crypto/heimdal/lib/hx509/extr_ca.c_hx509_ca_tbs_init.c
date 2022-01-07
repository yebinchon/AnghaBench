
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int * hx509_ca_tbs ;


 int ENOMEM ;
 int * calloc (int,int) ;

int
hx509_ca_tbs_init(hx509_context context, hx509_ca_tbs *tbs)
{
    *tbs = calloc(1, sizeof(**tbs));
    if (*tbs == ((void*)0))
 return ENOMEM;

    return 0;
}
