
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {struct config_file* cfg; } ;
struct worker {TYPE_1__ env; } ;
struct query_info {scalar_t__ qtype; int qname; } ;
struct edns_data {int dummy; } ;
struct config_file {scalar_t__* identity; scalar_t__* version; scalar_t__ hide_trustanchor; scalar_t__ hide_version; scalar_t__ hide_identity; } ;
struct comm_reply {int dummy; } ;
typedef int sldns_buffer ;


 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_RR_TYPE_TXT ;
 int MAXHOSTNAMELEN ;
 char* PACKAGE_STRING ;
 int chaos_replyonestr (int *,char*,struct edns_data*,struct worker*,struct comm_reply*) ;
 int chaos_trustanchor (int *,struct edns_data*,struct worker*,struct comm_reply*) ;
 int errno ;
 scalar_t__ gethostname (char*,int) ;
 int log_err (char*,int ) ;
 scalar_t__ query_dname_compare (int ,int *) ;
 int strerror (int ) ;

__attribute__((used)) static int
answer_chaos(struct worker* w, struct query_info* qinfo,
 struct edns_data* edns, struct comm_reply* repinfo, sldns_buffer* pkt)
{
 struct config_file* cfg = w->env.cfg;
 if(qinfo->qtype != LDNS_RR_TYPE_ANY && qinfo->qtype != LDNS_RR_TYPE_TXT)
  return 0;
 if(query_dname_compare(qinfo->qname,
  (uint8_t*)"\002id\006server") == 0 ||
  query_dname_compare(qinfo->qname,
  (uint8_t*)"\010hostname\004bind") == 0)
 {
  if(cfg->hide_identity)
   return 0;
  if(cfg->identity==((void*)0) || cfg->identity[0]==0) {
   char buf[MAXHOSTNAMELEN+1];
   if (gethostname(buf, MAXHOSTNAMELEN) == 0) {
    buf[MAXHOSTNAMELEN] = 0;
    chaos_replyonestr(pkt, buf, edns, w, repinfo);
   } else {
    log_err("gethostname: %s", strerror(errno));
    chaos_replyonestr(pkt, "no hostname", edns, w, repinfo);
   }
  }
  else chaos_replyonestr(pkt, cfg->identity, edns, w, repinfo);
  return 1;
 }
 if(query_dname_compare(qinfo->qname,
  (uint8_t*)"\007version\006server") == 0 ||
  query_dname_compare(qinfo->qname,
  (uint8_t*)"\007version\004bind") == 0)
 {
  if(cfg->hide_version)
   return 0;
  if(cfg->version==((void*)0) || cfg->version[0]==0)
   chaos_replyonestr(pkt, PACKAGE_STRING, edns, w, repinfo);
  else chaos_replyonestr(pkt, cfg->version, edns, w, repinfo);
  return 1;
 }
 if(query_dname_compare(qinfo->qname,
  (uint8_t*)"\013trustanchor\007unbound") == 0)
 {
  if(cfg->hide_trustanchor)
   return 0;
  chaos_trustanchor(pkt, edns, w, repinfo);
  return 1;
 }

 return 0;
}
