
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serviced_query {scalar_t__ status; int dnssec; int addrlen; int addr; int opt_list; int qbuflen; int qbuf; TYPE_1__* outnet; int nocaps; } ;
struct edns_data {int edns_present; int bits; scalar_t__ udp_size; int opt_list; int edns_version; scalar_t__ ext_rcode; } ;
typedef int sldns_buffer ;
struct TYPE_2__ {int rnd; scalar_t__ use_caps_for_id; } ;


 int BIT_CD ;
 scalar_t__ EDNS_ADVERTISED_SIZE ;
 int EDNS_ADVERTISED_VERSION ;
 int EDNS_DO ;
 scalar_t__ EDNS_FRAG_SIZE_IP4 ;
 scalar_t__ EDNS_FRAG_SIZE_IP6 ;
 int LDNS_CD_SET (int ) ;
 scalar_t__ addr_is_ip6 (int *,int ) ;
 int attach_edns_record (int *,struct edns_data*) ;
 int serviced_perturb_qname (int ,int ,int ) ;
 scalar_t__ serviced_query_UDP_EDNS_FRAG ;
 int sldns_buffer_begin (int *) ;
 int sldns_buffer_clear (int *) ;
 int sldns_buffer_flip (int *) ;
 int sldns_buffer_write (int *,int ,int ) ;
 int sldns_buffer_write_u16 (int *,int ) ;

__attribute__((used)) static void
serviced_encode(struct serviced_query* sq, sldns_buffer* buff, int with_edns)
{

 if(sq->outnet->use_caps_for_id && !sq->nocaps) {
  serviced_perturb_qname(sq->outnet->rnd, sq->qbuf, sq->qbuflen);
 }

 sldns_buffer_clear(buff);
 sldns_buffer_write_u16(buff, 0);
 sldns_buffer_write(buff, sq->qbuf, sq->qbuflen);
 sldns_buffer_flip(buff);
 if(with_edns) {

  struct edns_data edns;
  edns.edns_present = 1;
  edns.ext_rcode = 0;
  edns.edns_version = EDNS_ADVERTISED_VERSION;
  edns.opt_list = sq->opt_list;
  if(sq->status == serviced_query_UDP_EDNS_FRAG) {
   if(addr_is_ip6(&sq->addr, sq->addrlen)) {
    if(EDNS_FRAG_SIZE_IP6 < EDNS_ADVERTISED_SIZE)
     edns.udp_size = EDNS_FRAG_SIZE_IP6;
    else edns.udp_size = EDNS_ADVERTISED_SIZE;
   } else {
    if(EDNS_FRAG_SIZE_IP4 < EDNS_ADVERTISED_SIZE)
     edns.udp_size = EDNS_FRAG_SIZE_IP4;
    else edns.udp_size = EDNS_ADVERTISED_SIZE;
   }
  } else {
   edns.udp_size = EDNS_ADVERTISED_SIZE;
  }
  edns.bits = 0;
  if(sq->dnssec & EDNS_DO)
   edns.bits = EDNS_DO;
  if(sq->dnssec & BIT_CD)
   LDNS_CD_SET(sldns_buffer_begin(buff));
  attach_edns_record(buff, &edns);
 }
}
