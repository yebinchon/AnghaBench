
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint16_t ;
struct query_info {int * local_alias; int qname; int qname_len; void* qclass; void* qtype; } ;
struct libworker {TYPE_2__* back; } ;
struct edns_data {int edns_present; int udp_size; int * opt_list; int bits; scalar_t__ edns_version; scalar_t__ ext_rcode; } ;
struct ctx_query {TYPE_1__* res; } ;
struct TYPE_4__ {int udp_buff; } ;
struct TYPE_3__ {int qname; scalar_t__ qclass; scalar_t__ qtype; } ;


 int EDNS_DO ;
 int sldns_buffer_capacity (int ) ;
 int sldns_str2wire_dname (int ,int *) ;

__attribute__((used)) static int
setup_qinfo_edns(struct libworker* w, struct ctx_query* q,
 struct query_info* qinfo, struct edns_data* edns)
{
 qinfo->qtype = (uint16_t)q->res->qtype;
 qinfo->qclass = (uint16_t)q->res->qclass;
 qinfo->local_alias = ((void*)0);
 qinfo->qname = sldns_str2wire_dname(q->res->qname, &qinfo->qname_len);
 if(!qinfo->qname) {
  return 0;
 }
 qinfo->local_alias = ((void*)0);
 edns->edns_present = 1;
 edns->ext_rcode = 0;
 edns->edns_version = 0;
 edns->bits = EDNS_DO;
 edns->opt_list = ((void*)0);
 if(sldns_buffer_capacity(w->back->udp_buff) < 65535)
  edns->udp_size = (uint16_t)sldns_buffer_capacity(
   w->back->udp_buff);
 else edns->udp_size = 65535;
 return 1;
}
