
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* parent; int signatures; int rrset; } ;
typedef TYPE_1__ ldns_dnssec_data_chain ;


 int LDNS_FREE (TYPE_1__*) ;
 int ldns_rr_list_deep_free (int ) ;

void
ldns_dnssec_data_chain_deep_free(ldns_dnssec_data_chain *chain)
{
 ldns_rr_list_deep_free(chain->rrset);
 ldns_rr_list_deep_free(chain->signatures);
 if (chain->parent) {
  ldns_dnssec_data_chain_deep_free(chain->parent);
 }
 LDNS_FREE(chain);
}
