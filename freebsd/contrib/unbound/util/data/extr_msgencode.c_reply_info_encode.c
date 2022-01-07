
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef size_t time_t ;
struct reply_info {scalar_t__ qdcount; int an_numrrsets; int rrset_count; int ns_numrrsets; int ar_numrrsets; int * rrsets; int flags; } ;
struct regional {int dummy; } ;
struct query_info {int qtype; TYPE_1__* local_alias; } ;
struct compress_tree_node {int dummy; } ;
typedef int sldns_buffer ;
typedef int arep ;
struct TYPE_2__ {int rrset; } ;


 scalar_t__ BIT_AA ;
 scalar_t__ LDNS_HEADER_SIZE ;
 int LDNS_SECTION_ADDITIONAL ;
 int LDNS_SECTION_ANSWER ;
 int LDNS_SECTION_AUTHORITY ;
 int LDNS_TC_SET (int ) ;
 scalar_t__ MINIMAL_RESPONSES ;
 int RETVAL_OK ;
 int RETVAL_TRUNC ;
 scalar_t__ RRSET_ROUNDROBIN ;
 int insert_query (struct query_info*,struct compress_tree_node**,int *,struct regional*) ;
 int insert_section (struct reply_info*,int,scalar_t__*,int *,int,size_t,struct regional*,struct compress_tree_node**,int ,int ,int,size_t) ;
 int memset (struct reply_info*,int ,int) ;
 size_t ntohs (scalar_t__) ;
 scalar_t__ positive_answer (struct reply_info*,int ) ;
 int sldns_buffer_begin (int *) ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 scalar_t__ sldns_buffer_limit (int *) ;
 scalar_t__ sldns_buffer_remaining (int *) ;
 int sldns_buffer_set_limit (int *,scalar_t__) ;
 int sldns_buffer_write (int *,...) ;
 int sldns_buffer_write_u16 (int *,scalar_t__) ;
 int sldns_buffer_write_u16_at (int *,int,scalar_t__) ;
 size_t time (int *) ;

int
reply_info_encode(struct query_info* qinfo, struct reply_info* rep,
 uint16_t id, uint16_t flags, sldns_buffer* buffer, time_t timenow,
 struct regional* region, uint16_t udpsize, int dnssec)
{
 uint16_t ancount=0, nscount=0, arcount=0;
 struct compress_tree_node* tree = 0;
 int r;
 size_t rr_offset;

 sldns_buffer_clear(buffer);
 if(udpsize < sldns_buffer_limit(buffer))
  sldns_buffer_set_limit(buffer, udpsize);
 if(sldns_buffer_remaining(buffer) < LDNS_HEADER_SIZE)
  return 0;

 sldns_buffer_write(buffer, &id, sizeof(uint16_t));
 sldns_buffer_write_u16(buffer, flags);
 sldns_buffer_write_u16(buffer, rep->qdcount);

 sldns_buffer_write(buffer, "\000\000\000\000\000\000", 6);


 if(rep->qdcount) {
  if((r=insert_query(qinfo, &tree, buffer, region)) !=
   RETVAL_OK) {
   if(r == RETVAL_TRUNC) {

    sldns_buffer_write_u16_at(buffer, 4, 0);
    LDNS_TC_SET(sldns_buffer_begin(buffer));
    sldns_buffer_flip(buffer);
    return 1;
   }
   return 0;
  }
 }


 rr_offset = RRSET_ROUNDROBIN?ntohs(id)+(timenow?timenow:time(((void*)0))):0;






 if(qinfo->local_alias && (flags & BIT_AA)) {
  struct reply_info arep;
  time_t timezero = 0;
  memset(&arep, 0, sizeof(arep));
  arep.flags = rep->flags;
  arep.an_numrrsets = 1;
  arep.rrset_count = 1;
  arep.rrsets = &qinfo->local_alias->rrset;
  if((r=insert_section(&arep, 1, &ancount, buffer, 0,
   timezero, region, &tree, LDNS_SECTION_ANSWER,
   qinfo->qtype, dnssec, rr_offset)) != RETVAL_OK) {
   if(r == RETVAL_TRUNC) {

    sldns_buffer_write_u16_at(buffer, 6, ancount);
    LDNS_TC_SET(sldns_buffer_begin(buffer));
    sldns_buffer_flip(buffer);
    return 1;
   }
   return 0;
  }
 }


 if((r=insert_section(rep, rep->an_numrrsets, &ancount, buffer,
  0, timenow, region, &tree, LDNS_SECTION_ANSWER, qinfo->qtype,
  dnssec, rr_offset)) != RETVAL_OK) {
  if(r == RETVAL_TRUNC) {

   sldns_buffer_write_u16_at(buffer, 6, ancount);
   LDNS_TC_SET(sldns_buffer_begin(buffer));
   sldns_buffer_flip(buffer);
   return 1;
  }
  return 0;
 }
 sldns_buffer_write_u16_at(buffer, 6, ancount);


 if( ! (MINIMAL_RESPONSES && positive_answer(rep, qinfo->qtype)) ) {

  if((r=insert_section(rep, rep->ns_numrrsets, &nscount, buffer,
   rep->an_numrrsets, timenow, region, &tree,
   LDNS_SECTION_AUTHORITY, qinfo->qtype,
   dnssec, rr_offset)) != RETVAL_OK) {
   if(r == RETVAL_TRUNC) {

    sldns_buffer_write_u16_at(buffer, 8, nscount);
    LDNS_TC_SET(sldns_buffer_begin(buffer));
    sldns_buffer_flip(buffer);
    return 1;
   }
   return 0;
  }
  sldns_buffer_write_u16_at(buffer, 8, nscount);


  if((r=insert_section(rep, rep->ar_numrrsets, &arcount, buffer,
   rep->an_numrrsets + rep->ns_numrrsets, timenow, region,
   &tree, LDNS_SECTION_ADDITIONAL, qinfo->qtype,
   dnssec, rr_offset)) != RETVAL_OK) {
   if(r == RETVAL_TRUNC) {

    sldns_buffer_write_u16_at(buffer, 10, arcount);
    sldns_buffer_flip(buffer);
    return 1;
   }
   return 0;
  }
  sldns_buffer_write_u16_at(buffer, 10, arcount);
 }
 sldns_buffer_flip(buffer);
 return 1;
}
