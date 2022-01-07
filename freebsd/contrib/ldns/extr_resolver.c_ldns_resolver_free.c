
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_resolver ;


 int LDNS_FREE (int *) ;

void
ldns_resolver_free(ldns_resolver *res)
{
 LDNS_FREE(res);
}
