
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;
struct msg_parse {int dummy; } ;
struct dns_msg {int rep; int qinfo; } ;
typedef int sldns_buffer ;


 int log_err (char*) ;
 int memset (struct dns_msg*,int ,int) ;
 int parse_create_msg (int *,struct msg_parse*,int *,int *,int *,struct regional*) ;
 scalar_t__ regional_alloc (struct regional*,int) ;

struct dns_msg*
dns_alloc_msg(sldns_buffer* pkt, struct msg_parse* msg,
 struct regional* region)
{
 struct dns_msg* m = (struct dns_msg*)regional_alloc(region,
  sizeof(struct dns_msg));
 if(!m)
  return ((void*)0);
 memset(m, 0, sizeof(*m));
 if(!parse_create_msg(pkt, msg, ((void*)0), &m->qinfo, &m->rep, region)) {
  log_err("malloc failure: allocating incoming dns_msg");
  return ((void*)0);
 }
 return m;
}
