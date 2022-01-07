
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reply_info {int dummy; } ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct msg_parse {int dummy; } ;
typedef int sldns_buffer ;


 int memset (struct msg_parse*,int ,int) ;
 int parse_create_msg (int *,struct msg_parse*,int *,struct query_info*,struct reply_info**,struct regional*) ;
 scalar_t__ parse_packet (int *,struct msg_parse*,struct regional*) ;
 struct msg_parse* regional_alloc (struct regional*,int) ;
 int sldns_buffer_set_position (int *,int ) ;

struct reply_info*
parse_reply_in_temp_region(sldns_buffer* pkt, struct regional* region,
 struct query_info* qi)
{
 struct reply_info* rep;
 struct msg_parse* msg;
 if(!(msg = regional_alloc(region, sizeof(*msg)))) {
  return ((void*)0);
 }
 memset(msg, 0, sizeof(*msg));
 sldns_buffer_set_position(pkt, 0);
 if(parse_packet(pkt, msg, region) != 0){
  return 0;
 }
 if(!parse_create_msg(pkt, msg, ((void*)0), qi, &rep, region)) {
  return 0;
 }
 return rep;
}
