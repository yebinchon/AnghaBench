
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct worker {int scratchpad; int env; } ;
struct edns_data {int * opt_list; int bits; int udp_size; int edns_version; } ;
struct comm_reply {int dummy; } ;
typedef int ssize_t ;
typedef int sldns_buffer ;


 int BIT_QR ;
 int BIT_RA ;
 int EDNS_ADVERTISED_SIZE ;
 int EDNS_ADVERTISED_VERSION ;
 int EDNS_DO ;
 int LDNS_CD_SET (int ) ;
 unsigned int LDNS_CD_WIRE (int ) ;
 int LDNS_RCODE_NOERROR ;
 int LDNS_RD_SET (int ) ;
 unsigned int LDNS_RD_WIRE (int ) ;
 int LDNS_RR_CLASS_CH ;
 int LDNS_RR_TYPE_TXT ;
 int attach_edns_record (int *,struct edns_data*) ;
 scalar_t__ calc_edns_field_size (struct edns_data*) ;
 int inplace_cb_reply_local_call (int *,int *,int *,int *,int ,struct edns_data*,struct comm_reply*,int ) ;
 int query_dname_len (int *) ;
 int sldns_buffer_begin (int *) ;
 scalar_t__ sldns_buffer_capacity (int *) ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 scalar_t__ sldns_buffer_limit (int *) ;
 int sldns_buffer_skip (int *,int ) ;
 int sldns_buffer_write (int *,char*,size_t) ;
 int sldns_buffer_write_u16 (int *,int) ;
 int sldns_buffer_write_u32 (int *,int ) ;
 int sldns_buffer_write_u8 (int *,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
chaos_replystr(sldns_buffer* pkt, char** str, int num, struct edns_data* edns,
 struct worker* worker, struct comm_reply* repinfo)
{
 int i;
 unsigned int rd = LDNS_RD_WIRE(sldns_buffer_begin(pkt));
 unsigned int cd = LDNS_CD_WIRE(sldns_buffer_begin(pkt));
 sldns_buffer_clear(pkt);
 sldns_buffer_skip(pkt, (ssize_t)sizeof(uint16_t));
 sldns_buffer_write_u16(pkt, (uint16_t)(BIT_QR|BIT_RA));
 if(rd) LDNS_RD_SET(sldns_buffer_begin(pkt));
 if(cd) LDNS_CD_SET(sldns_buffer_begin(pkt));
 sldns_buffer_write_u16(pkt, 1);
 sldns_buffer_write_u16(pkt, (uint16_t)num);
 sldns_buffer_write_u16(pkt, 0);
 sldns_buffer_write_u16(pkt, 0);
 (void)query_dname_len(pkt);
 sldns_buffer_skip(pkt, (ssize_t)sizeof(uint16_t));
 sldns_buffer_skip(pkt, (ssize_t)sizeof(uint16_t));
 for(i=0; i<num; i++) {
  size_t len = strlen(str[i]);
  if(len>255) len=255;
  sldns_buffer_write_u16(pkt, 0xc00c);
  sldns_buffer_write_u16(pkt, LDNS_RR_TYPE_TXT);
  sldns_buffer_write_u16(pkt, LDNS_RR_CLASS_CH);
  sldns_buffer_write_u32(pkt, 0);
  sldns_buffer_write_u16(pkt, sizeof(uint8_t) + len);
  sldns_buffer_write_u8(pkt, len);
  sldns_buffer_write(pkt, str[i], len);
 }
 sldns_buffer_flip(pkt);
 edns->edns_version = EDNS_ADVERTISED_VERSION;
 edns->udp_size = EDNS_ADVERTISED_SIZE;
 edns->bits &= EDNS_DO;
 if(!inplace_cb_reply_local_call(&worker->env, ((void*)0), ((void*)0), ((void*)0),
  LDNS_RCODE_NOERROR, edns, repinfo, worker->scratchpad))
   edns->opt_list = ((void*)0);
 if(sldns_buffer_capacity(pkt) >=
  sldns_buffer_limit(pkt)+calc_edns_field_size(edns))
  attach_edns_record(pkt, edns);
}
