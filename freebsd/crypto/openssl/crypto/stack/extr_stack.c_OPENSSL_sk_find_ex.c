
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_STACK ;


 int OBJ_BSEARCH_VALUE_ON_NOMATCH ;
 int internal_find (int *,void const*,int ) ;

int OPENSSL_sk_find_ex(OPENSSL_STACK *st, const void *data)
{
    return internal_find(st, data, OBJ_BSEARCH_VALUE_ON_NOMATCH);
}
