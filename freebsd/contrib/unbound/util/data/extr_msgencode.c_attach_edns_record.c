
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edns_option {scalar_t__ opt_code; scalar_t__ opt_len; int opt_data; struct edns_option* next; } ;
struct edns_data {scalar_t__ udp_size; scalar_t__ bits; struct edns_option* opt_list; int edns_version; int ext_rcode; int edns_present; } ;
typedef int sldns_buffer ;


 scalar_t__ LDNS_RR_TYPE_OPT ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 size_t sldns_buffer_limit (int *) ;
 size_t sldns_buffer_position (int *) ;
 size_t sldns_buffer_read_u16_at (int *,int) ;
 int sldns_buffer_set_position (int *,size_t) ;
 int sldns_buffer_write (int *,int ,scalar_t__) ;
 int sldns_buffer_write_u16 (int *,scalar_t__) ;
 int sldns_buffer_write_u16_at (int *,size_t,size_t) ;
 int sldns_buffer_write_u8 (int *,int ) ;

void
attach_edns_record(sldns_buffer* pkt, struct edns_data* edns)
{
 size_t len;
 size_t rdatapos;
 struct edns_option* opt;
 if(!edns || !edns->edns_present)
  return;

 sldns_buffer_write_u16_at(pkt, 10,
  sldns_buffer_read_u16_at(pkt, 10) + 1);
 len = sldns_buffer_limit(pkt);
 sldns_buffer_clear(pkt);
 sldns_buffer_set_position(pkt, len);

 sldns_buffer_write_u8(pkt, 0);
 sldns_buffer_write_u16(pkt, LDNS_RR_TYPE_OPT);
 sldns_buffer_write_u16(pkt, edns->udp_size);
 sldns_buffer_write_u8(pkt, edns->ext_rcode);
 sldns_buffer_write_u8(pkt, edns->edns_version);
 sldns_buffer_write_u16(pkt, edns->bits);
 rdatapos = sldns_buffer_position(pkt);
 sldns_buffer_write_u16(pkt, 0);

 for(opt=edns->opt_list; opt; opt=opt->next) {
  sldns_buffer_write_u16(pkt, opt->opt_code);
  sldns_buffer_write_u16(pkt, opt->opt_len);
  if(opt->opt_len != 0)
   sldns_buffer_write(pkt, opt->opt_data, opt->opt_len);
 }
 if(edns->opt_list)
  sldns_buffer_write_u16_at(pkt, rdatapos,
   sldns_buffer_position(pkt)-rdatapos-2);
 sldns_buffer_flip(pkt);
}
