
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct rrset_parse {scalar_t__ type; int hash; TYPE_1__* rr_last; scalar_t__ rr_first; TYPE_1__* rrsig_last; scalar_t__ rrsig_first; scalar_t__ rr_count; int rrsig_count; int flags; struct rrset_parse* rrset_bucket_next; int rrset_class; int dname_len; int dname; } ;
struct regional {int dummy; } ;
struct msg_parse {scalar_t__ qtype; struct rrset_parse** hashtable; int ar_rrsets; int ns_rrsets; int an_rrsets; } ;
typedef int const sldns_pkt_section ;
typedef int sldns_buffer ;
typedef int hashvalue_type ;
struct TYPE_2__ {scalar_t__ next; } ;


 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_RR_TYPE_RRSIG ;



 int PARSE_TABLE_SIZE ;
 int change_section (struct msg_parse*,struct rrset_parse*,int const) ;
 int log_assert (int) ;
 int moveover_rrsigs (int *,struct regional*,struct rrset_parse*,struct rrset_parse*,int) ;
 int msgparse_bucket_remove (struct msg_parse*,struct rrset_parse*) ;
 struct rrset_parse* new_rrset (struct msg_parse*,int ,int ,scalar_t__,int ,int,int ,int const,struct regional*) ;
 int pkt_hash_rrset (int *,int ,scalar_t__,int ,int ) ;

__attribute__((used)) static struct rrset_parse*
change_rrsig_rrset(struct rrset_parse* sigset, struct msg_parse* msg,
 sldns_buffer* pkt, uint16_t datatype, uint32_t rrset_flags,
 int hasother, sldns_pkt_section section, struct regional* region)
{
 struct rrset_parse* dataset = sigset;
 hashvalue_type hash = pkt_hash_rrset(pkt, sigset->dname, datatype,
  sigset->rrset_class, rrset_flags);
 log_assert( sigset->type == LDNS_RR_TYPE_RRSIG );
 log_assert( datatype != LDNS_RR_TYPE_RRSIG );
 if(hasother) {

  dataset = new_rrset(msg, sigset->dname, sigset->dname_len,
   datatype, sigset->rrset_class, hash, rrset_flags,
   section, region);
  if(!dataset)
   return ((void*)0);
  switch(section) {
   case 129: msg->an_rrsets++; break;
   case 128: msg->ns_rrsets++; break;
   case 130: msg->ar_rrsets++; break;
   default: log_assert(0);
  }
  if(!moveover_rrsigs(pkt, region, sigset, dataset,
   msg->qtype == LDNS_RR_TYPE_RRSIG ||
   (msg->qtype == LDNS_RR_TYPE_ANY &&
   section != 129) ))
   return ((void*)0);
  return dataset;
 }

 msgparse_bucket_remove(msg, dataset);

 dataset->rrset_bucket_next = msg->hashtable[hash&(PARSE_TABLE_SIZE-1)];
 msg->hashtable[hash&(PARSE_TABLE_SIZE-1)] = dataset;
 dataset->hash = hash;

 change_section(msg, dataset, section);
 dataset->type = datatype;
 dataset->flags = rrset_flags;
 dataset->rrsig_count += dataset->rr_count;
 dataset->rr_count = 0;

 if(dataset->rrsig_last)
  dataset->rrsig_last->next = dataset->rr_first;
 else dataset->rrsig_first = dataset->rr_first;
 dataset->rrsig_last = dataset->rr_last;
 dataset->rr_first = 0;
 dataset->rr_last = 0;
 return dataset;
}
