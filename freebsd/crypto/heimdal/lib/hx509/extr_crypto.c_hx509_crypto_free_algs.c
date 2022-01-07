
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlgorithmIdentifier ;


 int free (int *) ;
 int free_AlgorithmIdentifier (int *) ;

void
hx509_crypto_free_algs(AlgorithmIdentifier *val,
         unsigned int len)
{
    unsigned int i;
    for (i = 0; i < len; i++)
 free_AlgorithmIdentifier(&val[i]);
    free(val);
}
