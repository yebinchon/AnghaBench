
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_key {int localKeyId; scalar_t__ private_key; int alg; } ;


 int der_free_octet_string (int *) ;
 int free (struct private_key*) ;
 int free_AlgorithmIdentifier (int *) ;
 int hx509_private_key_free (scalar_t__*) ;

__attribute__((used)) static void
free_private_key(struct private_key *key)
{
    free_AlgorithmIdentifier(&key->alg);
    if (key->private_key)
 hx509_private_key_free(&key->private_key);
    der_free_octet_string(&key->localKeyId);
    free(key);
}
