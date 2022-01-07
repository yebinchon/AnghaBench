
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_dnssec_data_chain ;


 int LDNS_FREE (int *) ;

void
ldns_dnssec_data_chain_free(ldns_dnssec_data_chain *chain)
{
 LDNS_FREE(chain);
}
