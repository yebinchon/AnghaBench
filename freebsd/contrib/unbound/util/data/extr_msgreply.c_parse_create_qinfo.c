
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regional {int dummy; } ;
struct query_info {int * local_alias; int qclass; int qtype; int qname_len; int * qname; } ;
struct msg_parse {int qclass; int qtype; int qname_len; scalar_t__ qname; } ;
typedef int sldns_buffer ;


 int dname_pkt_copy (int *,int *,scalar_t__) ;
 scalar_t__ malloc (int ) ;
 scalar_t__ regional_alloc (struct regional*,int ) ;

__attribute__((used)) static int
parse_create_qinfo(sldns_buffer* pkt, struct msg_parse* msg,
 struct query_info* qinf, struct regional* region)
{
 if(msg->qname) {
  if(region)
   qinf->qname = (uint8_t*)regional_alloc(region,
    msg->qname_len);
  else qinf->qname = (uint8_t*)malloc(msg->qname_len);
  if(!qinf->qname) return 0;
  dname_pkt_copy(pkt, qinf->qname, msg->qname);
 } else qinf->qname = 0;
 qinf->qname_len = msg->qname_len;
 qinf->qtype = msg->qtype;
 qinf->qclass = msg->qclass;
 qinf->local_alias = ((void*)0);
 return 1;
}
