
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct ub_server_stats {int qEDNS_DO; int qEDNS; int qbit_CD; int qbit_AD; int qbit_Z; int qbit_RA; int qbit_RD; int qbit_TC; int qbit_AA; int qbit_QR; int qipv6; int qtls_resume; int qtls; int qtcp; int * qopcode; int qclass_big; int * qclass; int qtype_big; int * qtype; } ;
struct edns_data {int bits; scalar_t__ edns_present; } ;
struct comm_reply {int addrlen; int addr; } ;
struct comm_point {scalar_t__ type; int * ssl; int buffer; } ;


 size_t BIT_AA ;
 size_t BIT_AD ;
 size_t BIT_CD ;
 size_t BIT_QR ;
 size_t BIT_RA ;
 size_t BIT_RD ;
 size_t BIT_TC ;
 size_t BIT_Z ;
 int EDNS_DO ;
 size_t LDNS_OPCODE_WIRE (int ) ;
 scalar_t__ SSL_session_reused (int *) ;
 size_t UB_STATS_QCLASS_NUM ;
 size_t UB_STATS_QTYPE_NUM ;
 scalar_t__ addr_is_ip6 (int *,int ) ;
 scalar_t__ comm_udp ;
 int sldns_buffer_begin (int ) ;
 size_t sldns_buffer_read_u16_at (int ,int) ;

void server_stats_insquery(struct ub_server_stats* stats, struct comm_point* c,
 uint16_t qtype, uint16_t qclass, struct edns_data* edns,
 struct comm_reply* repinfo)
{
 uint16_t flags = sldns_buffer_read_u16_at(c->buffer, 2);
 if(qtype < UB_STATS_QTYPE_NUM)
  stats->qtype[qtype]++;
 else stats->qtype_big++;
 if(qclass < UB_STATS_QCLASS_NUM)
  stats->qclass[qclass]++;
 else stats->qclass_big++;
 stats->qopcode[ LDNS_OPCODE_WIRE(sldns_buffer_begin(c->buffer)) ]++;
 if(c->type != comm_udp) {
  stats->qtcp++;
  if(c->ssl != ((void*)0)) {
   stats->qtls++;




  }
 }
 if(repinfo && addr_is_ip6(&repinfo->addr, repinfo->addrlen))
  stats->qipv6++;
 if( (flags&BIT_QR) )
  stats->qbit_QR++;
 if( (flags&BIT_AA) )
  stats->qbit_AA++;
 if( (flags&BIT_TC) )
  stats->qbit_TC++;
 if( (flags&BIT_RD) )
  stats->qbit_RD++;
 if( (flags&BIT_RA) )
  stats->qbit_RA++;
 if( (flags&BIT_Z) )
  stats->qbit_Z++;
 if( (flags&BIT_AD) )
  stats->qbit_AD++;
 if( (flags&BIT_CD) )
  stats->qbit_CD++;
 if(edns->edns_present) {
  stats->qEDNS++;
  if( (edns->bits & EDNS_DO) )
   stats->qEDNS_DO++;
 }
}
