
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ qtype; } ;
struct module_qstate {TYPE_1__ qinfo; scalar_t__ is_valrec; } ;
struct dns_msg {TYPE_2__* rep; } ;
typedef int rc ;
struct TYPE_4__ {scalar_t__ an_numrrsets; int flags; } ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;
 int LDNS_RCODE_NOERROR ;
 int LDNS_RCODE_NXDOMAIN ;
 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 scalar_t__ VERB_ALGO ;
 int sldns_wire2str_rcode_buf (int,char*,int) ;
 int verbose (scalar_t__,char*,...) ;
 scalar_t__ verbosity ;

__attribute__((used)) static int
needs_validation(struct module_qstate* qstate, int ret_rc,
 struct dns_msg* ret_msg)
{
 int rcode;
 if(qstate->is_valrec) {
  verbose(VERB_ALGO, "not validating response, is valrec"
   "(validation recursion lookup)");
  return 0;
 }

 if(ret_rc != LDNS_RCODE_NOERROR || !ret_msg)
  rcode = ret_rc;
 else rcode = (int)FLAGS_GET_RCODE(ret_msg->rep->flags);

 if(rcode != LDNS_RCODE_NOERROR && rcode != LDNS_RCODE_NXDOMAIN) {
  if(verbosity >= VERB_ALGO) {
   char rc[16];
   rc[0]=0;
   (void)sldns_wire2str_rcode_buf(rcode, rc, sizeof(rc));
   verbose(VERB_ALGO, "cannot validate non-answer, rcode %s", rc);
  }
  return 0;
 }


 if(qstate->qinfo.qtype == LDNS_RR_TYPE_RRSIG &&
  rcode == LDNS_RCODE_NOERROR && ret_msg &&
  ret_msg->rep->an_numrrsets > 0) {
  verbose(VERB_ALGO, "cannot validate RRSIG, no sigs on sigs.");
  return 0;
 }
 return 1;
}
