
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* _rdata_fields; } ;
typedef TYPE_1__ ldns_rr ;


 int LDNS_FREE (TYPE_1__*) ;
 int ldns_rdf_deep_free (scalar_t__) ;
 scalar_t__ ldns_rr_owner (TYPE_1__*) ;
 size_t ldns_rr_rd_count (TYPE_1__*) ;
 scalar_t__ ldns_rr_rdf (TYPE_1__*,size_t) ;

void
ldns_rr_free(ldns_rr *rr)
{
 size_t i;
 if (rr) {
  if (ldns_rr_owner(rr)) {
   ldns_rdf_deep_free(ldns_rr_owner(rr));
  }
  for (i = 0; i < ldns_rr_rd_count(rr); i++) {
   ldns_rdf_deep_free(ldns_rr_rdf(rr, i));
  }
  LDNS_FREE(rr->_rdata_fields);
  LDNS_FREE(rr);
 }
}
