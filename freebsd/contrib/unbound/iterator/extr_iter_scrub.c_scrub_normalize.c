
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rrset_parse {scalar_t__ section; scalar_t__ type; int rr_count; int flags; struct rrset_parse* rrset_all_next; scalar_t__ rrsig_count; int * dname; } ;
struct regional {int dummy; } ;
struct query_info {size_t qname_len; scalar_t__ qtype; int * qname; } ;
struct msg_parse {int an_rrsets; int rrset_count; struct rrset_parse* rrset_last; struct rrset_parse* rrset_first; scalar_t__ ar_rrsets; scalar_t__ ns_rrsets; scalar_t__ arcount; scalar_t__ nscount; scalar_t__ ancount; int flags; } ;
typedef int sldns_buffer ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;
 int LDNS_MAX_DOMAINLEN ;
 scalar_t__ LDNS_RCODE_NOERROR ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_RR_TYPE_DNAME ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_SECTION_ADDITIONAL ;
 scalar_t__ LDNS_SECTION_ANSWER ;
 scalar_t__ LDNS_SECTION_AUTHORITY ;
 int RRSET_SCRUB_OK ;
 int VERB_ALGO ;
 scalar_t__ dname_pkt_compare (int *,int *,int *) ;
 int log_err (char*) ;
 int mark_additional_rrset (int *,struct msg_parse*,struct rrset_parse*) ;
 scalar_t__ parse_get_cname_target (struct rrset_parse*,int **,size_t*) ;
 scalar_t__ pkt_strict_sub (int *,int *,int *) ;
 int remove_rrset (char*,int *,struct msg_parse*,struct rrset_parse*,struct rrset_parse**) ;
 scalar_t__ soa_in_auth (struct msg_parse*) ;
 int sub_of_pkt (int *,int *,int *) ;
 scalar_t__ synth_cname (int *,size_t,struct rrset_parse*,int *,size_t*,int *) ;
 struct rrset_parse* synth_cname_rrset (int **,size_t*,int *,size_t,struct regional*,struct msg_parse*,struct rrset_parse*,struct rrset_parse*,struct rrset_parse*,int *) ;
 int verbose (int ,char*,...) ;

__attribute__((used)) static int
scrub_normalize(sldns_buffer* pkt, struct msg_parse* msg,
 struct query_info* qinfo, struct regional* region)
{
 uint8_t* sname = qinfo->qname;
 size_t snamelen = qinfo->qname_len;
 struct rrset_parse* rrset, *prev, *nsset=((void*)0);

 if(FLAGS_GET_RCODE(msg->flags) != LDNS_RCODE_NOERROR &&
  FLAGS_GET_RCODE(msg->flags) != LDNS_RCODE_NXDOMAIN)
  return 1;







 prev = ((void*)0);
 rrset = msg->rrset_first;
 while(rrset && rrset->section == LDNS_SECTION_ANSWER) {
  if(rrset->type == LDNS_RR_TYPE_DNAME &&
   pkt_strict_sub(pkt, sname, rrset->dname)) {


   struct rrset_parse* nx = rrset->rrset_all_next;
   uint8_t alias[LDNS_MAX_DOMAINLEN+1];
   size_t aliaslen = 0;
   if(rrset->rr_count != 1) {
    verbose(VERB_ALGO, "Found DNAME rrset with "
     "size > 1: %u",
     (unsigned)rrset->rr_count);
    return 0;
   }
   if(!synth_cname(sname, snamelen, rrset, alias,
    &aliaslen, pkt)) {
    verbose(VERB_ALGO, "synthesized CNAME "
     "too long");
    return 0;
   }
   if(nx && nx->type == LDNS_RR_TYPE_CNAME &&
      dname_pkt_compare(pkt, sname, nx->dname) == 0) {

    uint8_t* t = ((void*)0);
    size_t tlen = 0;
    if(!parse_get_cname_target(nx, &t, &tlen))
     return 0;
    if(dname_pkt_compare(pkt, alias, t) == 0) {

     prev = rrset;
     rrset = nx;
     continue;
    }

   }

   prev = synth_cname_rrset(&sname, &snamelen, alias,
    aliaslen, region, msg, rrset, rrset, nx, pkt);
   if(!prev) {
    log_err("out of memory synthesizing CNAME");
    return 0;
   }


   rrset = nx;
   continue;

  }


  if(dname_pkt_compare(pkt, sname, rrset->dname) != 0) {
   remove_rrset("normalize: removing irrelevant RRset:",
    pkt, msg, prev, &rrset);
   continue;
  }


  if(rrset->type == LDNS_RR_TYPE_CNAME) {
   struct rrset_parse* nx = rrset->rrset_all_next;
   uint8_t* oldsname = sname;

   if(nx && nx->section == LDNS_SECTION_ANSWER &&
    nx->type == LDNS_RR_TYPE_DNAME &&
    nx->rr_count == 1 &&
    pkt_strict_sub(pkt, sname, nx->dname)) {





    uint8_t alias[LDNS_MAX_DOMAINLEN+1];
    size_t aliaslen = 0;
    uint8_t* t = ((void*)0);
    size_t tlen = 0;
    if(synth_cname(sname, snamelen, nx, alias,
     &aliaslen, pkt) &&
     parse_get_cname_target(rrset, &t, &tlen) &&
        dname_pkt_compare(pkt, alias, t) == 0) {




     verbose(VERB_ALGO, "normalize: re-order of DNAME and its CNAME");
     if(prev) prev->rrset_all_next = nx;
     else msg->rrset_first = nx;
     if(nx->rrset_all_next == ((void*)0))
      msg->rrset_last = rrset;
     rrset->rrset_all_next =
      nx->rrset_all_next;
     nx->rrset_all_next = rrset;



    }
   }


   if(!parse_get_cname_target(rrset, &sname, &snamelen))
    return 0;
   prev = rrset;
   rrset = rrset->rrset_all_next;

   if(qinfo->qtype == LDNS_RR_TYPE_ANY) {
    while(rrset && rrset->section ==
     LDNS_SECTION_ANSWER &&
     dname_pkt_compare(pkt, oldsname,
     rrset->dname) == 0) {
     prev = rrset;
     rrset = rrset->rrset_all_next;
    }
   }
   continue;
  }


  if(qinfo->qtype != LDNS_RR_TYPE_ANY &&
   qinfo->qtype != rrset->type) {
   remove_rrset("normalize: removing irrelevant RRset:",
    pkt, msg, prev, &rrset);
   continue;
  }




  if(dname_pkt_compare(pkt, qinfo->qname, rrset->dname) == 0)
   mark_additional_rrset(pkt, msg, rrset);

  prev = rrset;
  rrset = rrset->rrset_all_next;
 }


 while(rrset && rrset->section == LDNS_SECTION_AUTHORITY) {
  if(rrset->type==LDNS_RR_TYPE_DNAME ||
   rrset->type==LDNS_RR_TYPE_CNAME ||
   rrset->type==LDNS_RR_TYPE_A ||
   rrset->type==LDNS_RR_TYPE_AAAA) {
   remove_rrset("normalize: removing irrelevant "
    "RRset:", pkt, msg, prev, &rrset);
   continue;
  }

  if(rrset->type==LDNS_RR_TYPE_NS) {

   if(!sub_of_pkt(pkt, qinfo->qname, rrset->dname)) {
    remove_rrset("normalize: removing irrelevant "
     "RRset:", pkt, msg, prev, &rrset);
    continue;
   }






   if(FLAGS_GET_RCODE(msg->flags) == LDNS_RCODE_NXDOMAIN ||
      (FLAGS_GET_RCODE(msg->flags) == LDNS_RCODE_NOERROR
       && soa_in_auth(msg) && msg->an_rrsets == 0)) {
    remove_rrset("normalize: removing irrelevant "
     "RRset:", pkt, msg, prev, &rrset);
    continue;
   }
   if(nsset == ((void*)0)) {
    nsset = rrset;
   } else {
    remove_rrset("normalize: removing irrelevant "
     "RRset:", pkt, msg, prev, &rrset);
    continue;
   }
  }


  if(rrset->type==LDNS_RR_TYPE_DS &&
   qinfo->qtype == LDNS_RR_TYPE_DS &&
   dname_pkt_compare(pkt, qinfo->qname, rrset->dname) == 0) {
   rrset->section = LDNS_SECTION_ANSWER;
   msg->ancount = rrset->rr_count + rrset->rrsig_count;
   msg->nscount = 0;
   msg->arcount = 0;
   msg->an_rrsets = 1;
   msg->ns_rrsets = 0;
   msg->ar_rrsets = 0;
   msg->rrset_count = 1;
   msg->rrset_first = rrset;
   msg->rrset_last = rrset;
   rrset->rrset_all_next = ((void*)0);
   return 1;
  }
  mark_additional_rrset(pkt, msg, rrset);
  prev = rrset;
  rrset = rrset->rrset_all_next;
 }





 while(rrset && rrset->section == LDNS_SECTION_ADDITIONAL) {

  if(rrset->type==LDNS_RR_TYPE_A ||
   rrset->type==LDNS_RR_TYPE_AAAA)
  {
   if((rrset->flags & RRSET_SCRUB_OK)) {

    rrset->flags &= ~RRSET_SCRUB_OK;
   } else {
    remove_rrset("normalize: removing irrelevant "
     "RRset:", pkt, msg, prev, &rrset);
    continue;
   }
  }
  if(rrset->type==LDNS_RR_TYPE_DNAME ||
   rrset->type==LDNS_RR_TYPE_CNAME ||
   rrset->type==LDNS_RR_TYPE_NS) {
   remove_rrset("normalize: removing irrelevant "
    "RRset:", pkt, msg, prev, &rrset);
   continue;
  }
  prev = rrset;
  rrset = rrset->rrset_all_next;
 }

 return 1;
}
