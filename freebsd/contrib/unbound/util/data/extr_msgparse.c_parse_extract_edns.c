
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct rrset_parse {scalar_t__ type; scalar_t__ section; int rr_count; int dname_len; scalar_t__* dname; TYPE_2__* rr_first; int rrset_class; TYPE_1__* rr_last; struct rrset_parse* rrset_all_next; } ;
struct regional {int dummy; } ;
struct msg_parse {int rrset_count; int ar_rrsets; int arcount; struct rrset_parse* rrset_last; struct rrset_parse* rrset_first; } ;
struct edns_data {int udp_size; int edns_present; int * opt_list; int bits; int edns_version; int ext_rcode; } ;
struct TYPE_4__ {int size; int * ttl_data; } ;
struct TYPE_3__ {int * ttl_data; } ;


 int LDNS_RCODE_FORMERR ;
 scalar_t__ LDNS_RR_TYPE_OPT ;
 scalar_t__ LDNS_SECTION_ADDITIONAL ;
 int log_assert (int) ;
 int memset (struct edns_data*,int ,int) ;
 int ntohs (int ) ;
 int parse_edns_options (int *,size_t,struct edns_data*,struct regional*) ;
 int sldns_read_uint16 (int *) ;

int
parse_extract_edns(struct msg_parse* msg, struct edns_data* edns,
 struct regional* region)
{
 struct rrset_parse* rrset = msg->rrset_first;
 struct rrset_parse* prev = 0;
 struct rrset_parse* found = 0;
 struct rrset_parse* found_prev = 0;
 size_t rdata_len;
 uint8_t* rdata_ptr;


 while(rrset) {
  if(rrset->type == LDNS_RR_TYPE_OPT) {

   if(found) return LDNS_RCODE_FORMERR;

   found_prev = prev;
   found = rrset;
  }
  prev = rrset;
  rrset = rrset->rrset_all_next;
 }
 if(!found) {
  memset(edns, 0, sizeof(*edns));
  edns->udp_size = 512;
  return 0;
 }


 if(found->section != LDNS_SECTION_ADDITIONAL)
  return LDNS_RCODE_FORMERR;
 if(found->rr_count == 0)
  return LDNS_RCODE_FORMERR;
 if(0) {
  if(found->dname_len != 1 || !found->dname
   || found->dname[0] != 0) return LDNS_RCODE_FORMERR;
  if(found->rr_count != 1) return LDNS_RCODE_FORMERR;
 }
 log_assert(found->rr_first && found->rr_last);


 if(found_prev) found_prev->rrset_all_next = found->rrset_all_next;
 else msg->rrset_first = found->rrset_all_next;
 if(found == msg->rrset_last)
  msg->rrset_last = found_prev;
 msg->arcount --;
 msg->ar_rrsets --;
 msg->rrset_count --;


 edns->edns_present = 1;
 edns->ext_rcode = found->rr_last->ttl_data[0];
 edns->edns_version = found->rr_last->ttl_data[1];
 edns->bits = sldns_read_uint16(&found->rr_last->ttl_data[2]);
 edns->udp_size = ntohs(found->rrset_class);
 edns->opt_list = ((void*)0);


 rdata_len = found->rr_first->size-2;
 rdata_ptr = found->rr_first->ttl_data+6;
 if(!parse_edns_options(rdata_ptr, rdata_len, edns, region))
  return 0;



 return 0;
}
