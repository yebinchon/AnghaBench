
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct module_qstate {int dummy; } ;
struct TYPE_4__ {int qclass; int qname_len; scalar_t__ qname; } ;
struct iter_qstate {scalar_t__ dsns_point; TYPE_2__ qchase; int dsns_point_len; int state; TYPE_1__* dp; } ;
struct TYPE_3__ {scalar_t__ name; } ;


 int DSNS_FIND_STATE ;
 int FINISHED_STATE ;
 int INIT_REQUEST_STATE ;
 int LDNS_RCODE_SERVFAIL ;
 int LDNS_RR_TYPE_NS ;
 int QUERYTARGETS_STATE ;
 int VERB_ALGO ;
 int dname_remove_label (scalar_t__*,int *) ;
 int dname_subdomain_c (scalar_t__,scalar_t__) ;
 int errinf_dname (struct module_qstate*,char*,scalar_t__) ;
 int error_response_cache (struct module_qstate*,int,int ) ;
 int generate_sub_request (scalar_t__,int ,int ,int ,struct module_qstate*,int,struct iter_qstate*,int ,int ,struct module_qstate**,int ) ;
 int log_nametypeclass (int ,char*,scalar_t__,int ,int ) ;
 scalar_t__ query_dname_compare (scalar_t__,scalar_t__) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
processDSNSFind(struct module_qstate* qstate, struct iter_qstate* iq, int id)
{
 struct module_qstate* subq = ((void*)0);
 verbose(VERB_ALGO, "processDSNSFind");

 if(!iq->dsns_point) {

  iq->dsns_point = iq->qchase.qname;
  iq->dsns_point_len = iq->qchase.qname_len;
 }

 if(!dname_subdomain_c(iq->dsns_point, iq->dp->name)) {
  errinf_dname(qstate, "for DS query parent-child nameserver search the query is not under the zone", iq->dp->name);
  return error_response_cache(qstate, id, LDNS_RCODE_SERVFAIL);
 }


 dname_remove_label(&iq->dsns_point, &iq->dsns_point_len);
 if(query_dname_compare(iq->dsns_point, iq->dp->name) == 0) {



  iq->state = QUERYTARGETS_STATE;
  return 1;
 }
 iq->state = DSNS_FIND_STATE;


 log_nametypeclass(VERB_ALGO, "fetch nameservers",
  iq->dsns_point, LDNS_RR_TYPE_NS, iq->qchase.qclass);
 if(!generate_sub_request(iq->dsns_point, iq->dsns_point_len,
  LDNS_RR_TYPE_NS, iq->qchase.qclass, qstate, id, iq,
  INIT_REQUEST_STATE, FINISHED_STATE, &subq, 0)) {
  errinf_dname(qstate, "for DS query parent-child nameserver search, could not generate NS lookup for", iq->dsns_point);
  return error_response_cache(qstate, id, LDNS_RCODE_SERVFAIL);
 }

 return 0;
}
