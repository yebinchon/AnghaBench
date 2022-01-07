
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int auth_zones; } ;
struct worker {TYPE_1__ env; } ;
struct query_info {int qname; int qclass; int qname_len; } ;
struct edns_data {int * opt_list; int bits; scalar_t__ ext_rcode; int udp_size; int edns_version; } ;
struct comm_reply {int addrlen; int addr; } ;
typedef int sr ;
typedef int sldns_buffer ;
typedef int buf ;


 int EDNS_ADVERTISED_SIZE ;
 int EDNS_ADVERTISED_VERSION ;
 int EDNS_DO ;
 int LDNS_OPCODE_SET (scalar_t__,int ) ;
 int LDNS_PACKET_NOTIFY ;
 int LDNS_RCODE_NOERROR ;
 int LDNS_RCODE_REFUSED ;
 int LDNS_RCODE_SERVFAIL ;
 scalar_t__ VERB_DETAIL ;
 int auth_zone_parse_notify_serial (int *,scalar_t__*) ;
 scalar_t__ auth_zones_notify (int ,TYPE_1__*,int ,int ,int ,int *,int ,int,scalar_t__,int*) ;
 int dname_str (int ,char*) ;
 int error_encode (int *,int,struct query_info*,int ,int ,struct edns_data*) ;
 int log_addr (scalar_t__,char*,int *,int ) ;
 scalar_t__ sldns_buffer_begin (int *) ;
 int sldns_buffer_read_u16_at (int *,int) ;
 int snprintf (char*,int,char*,...) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void
answer_notify(struct worker* w, struct query_info* qinfo,
 struct edns_data* edns, sldns_buffer* pkt, struct comm_reply* repinfo)
{
 int refused = 0;
 int rcode = LDNS_RCODE_NOERROR;
 uint32_t serial = 0;
 int has_serial;
 if(!w->env.auth_zones) return;
 has_serial = auth_zone_parse_notify_serial(pkt, &serial);
 if(auth_zones_notify(w->env.auth_zones, &w->env, qinfo->qname,
  qinfo->qname_len, qinfo->qclass, &repinfo->addr,
  repinfo->addrlen, has_serial, serial, &refused)) {
  rcode = LDNS_RCODE_NOERROR;
 } else {
  if(refused)
   rcode = LDNS_RCODE_REFUSED;
  else rcode = LDNS_RCODE_SERVFAIL;
 }

 if(verbosity >= VERB_DETAIL) {
  char buf[380];
  char zname[255+1];
  char sr[25];
  dname_str(qinfo->qname, zname);
  sr[0]=0;
  if(has_serial)
   snprintf(sr, sizeof(sr), "serial %u ",
    (unsigned)serial);
  if(rcode == LDNS_RCODE_REFUSED)
   snprintf(buf, sizeof(buf),
    "refused NOTIFY %sfor %s from", sr, zname);
  else if(rcode == LDNS_RCODE_SERVFAIL)
   snprintf(buf, sizeof(buf),
    "servfail for NOTIFY %sfor %s from", sr, zname);
  else snprintf(buf, sizeof(buf),
    "received NOTIFY %sfor %s from", sr, zname);
  log_addr(VERB_DETAIL, buf, &repinfo->addr, repinfo->addrlen);
 }
 edns->edns_version = EDNS_ADVERTISED_VERSION;
 edns->udp_size = EDNS_ADVERTISED_SIZE;
 edns->ext_rcode = 0;
 edns->bits &= EDNS_DO;
 edns->opt_list = ((void*)0);
 error_encode(pkt, rcode, qinfo,
  *(uint16_t*)(void *)sldns_buffer_begin(pkt),
  sldns_buffer_read_u16_at(pkt, 2), edns);
 LDNS_OPCODE_SET(sldns_buffer_begin(pkt), LDNS_PACKET_NOTIFY);
}
