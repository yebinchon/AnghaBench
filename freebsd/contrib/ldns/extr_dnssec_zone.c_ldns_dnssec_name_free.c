
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_dnssec_name ;


 int ldns_dnssec_name_free_internal (int *,int ) ;

void
ldns_dnssec_name_free(ldns_dnssec_name *name)
{
  ldns_dnssec_name_free_internal(name, 0);
}
