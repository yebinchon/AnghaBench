
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr ;
struct TYPE_8__ {scalar_t__ type; TYPE_1__* signatures; TYPE_2__* rrs; } ;
typedef TYPE_3__ ldns_dnssec_rrsets ;
struct TYPE_7__ {int * rr; } ;
struct TYPE_6__ {int * rr; } ;


 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 void* ldns_dnssec_rrs_new () ;
 TYPE_3__* ldns_dnssec_rrsets_new () ;
 scalar_t__ ldns_rdf2rr_type (int ) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int ldns_rr_rrsig_typecovered (int *) ;

__attribute__((used)) static ldns_dnssec_rrsets *
ldns_dnssec_rrsets_new_frm_rr(ldns_rr *rr)
{
 ldns_dnssec_rrsets *new_rrsets;
 ldns_rr_type rr_type;
 bool rrsig;

 new_rrsets = ldns_dnssec_rrsets_new();
 rr_type = ldns_rr_get_type(rr);
 if (rr_type == LDNS_RR_TYPE_RRSIG) {
  rrsig = 1;
  rr_type = ldns_rdf2rr_type(ldns_rr_rrsig_typecovered(rr));
 } else {
  rrsig = 0;
 }
 if (!rrsig) {
  new_rrsets->rrs = ldns_dnssec_rrs_new();
  new_rrsets->rrs->rr = rr;
 } else {
  new_rrsets->signatures = ldns_dnssec_rrs_new();
  new_rrsets->signatures->rr = rr;
 }
 new_rrsets->type = rr_type;
 return new_rrsets;
}
