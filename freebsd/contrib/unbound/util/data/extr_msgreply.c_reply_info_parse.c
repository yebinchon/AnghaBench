
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reply_info {int dummy; } ;
struct regional {int dummy; } ;
struct query_info {int * local_alias; int * qname; } ;
struct msg_parse {int dummy; } ;
struct edns_data {int dummy; } ;
struct alloc_cache {int dummy; } ;
typedef int sldns_buffer ;


 int LDNS_RCODE_SERVFAIL ;
 int memset (struct msg_parse*,int ,int) ;
 int parse_create_msg (int *,struct msg_parse*,struct alloc_cache*,struct query_info*,struct reply_info**,int *) ;
 int parse_extract_edns (struct msg_parse*,struct edns_data*,struct regional*) ;
 int parse_packet (int *,struct msg_parse*,struct regional*) ;
 int query_info_clear (struct query_info*) ;
 struct msg_parse* regional_alloc (struct regional*,int) ;
 int reply_info_parsedelete (struct reply_info*,struct alloc_cache*) ;
 int sldns_buffer_set_position (int *,int ) ;

int reply_info_parse(sldns_buffer* pkt, struct alloc_cache* alloc,
        struct query_info* qinf, struct reply_info** rep,
 struct regional* region, struct edns_data* edns)
{

 struct msg_parse* msg;
 int ret;

 qinf->qname = ((void*)0);
 qinf->local_alias = ((void*)0);
 *rep = ((void*)0);
 if(!(msg = regional_alloc(region, sizeof(*msg)))) {
  return LDNS_RCODE_SERVFAIL;
 }
 memset(msg, 0, sizeof(*msg));

 sldns_buffer_set_position(pkt, 0);
 if((ret = parse_packet(pkt, msg, region)) != 0) {
  return ret;
 }
 if((ret = parse_extract_edns(msg, edns, region)) != 0)
  return ret;



 if(!parse_create_msg(pkt, msg, alloc, qinf, rep, ((void*)0))) {
  query_info_clear(qinf);
  reply_info_parsedelete(*rep, alloc);
  *rep = ((void*)0);
  return LDNS_RCODE_SERVFAIL;
 }
 return 0;
}
