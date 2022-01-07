
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_key ;


 int LDNS_FREE (int *) ;

void
ldns_key_free(ldns_key *key)
{
 LDNS_FREE(key);
}
