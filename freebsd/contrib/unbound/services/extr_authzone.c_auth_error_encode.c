
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct module_env {int dummy; } ;
struct edns_data {int * opt_list; int bits; scalar_t__ ext_rcode; int udp_size; int edns_version; } ;
struct comm_reply {int dummy; } ;
typedef int sldns_buffer ;


 int BIT_AA ;
 int EDNS_ADVERTISED_SIZE ;
 int EDNS_ADVERTISED_VERSION ;
 int EDNS_DO ;
 int error_encode (int *,int,struct query_info*,int ,int ,struct edns_data*) ;
 int inplace_cb_reply_local_call (struct module_env*,struct query_info*,int *,int *,int,struct edns_data*,struct comm_reply*,struct regional*) ;
 scalar_t__ sldns_buffer_begin (int *) ;
 int sldns_buffer_read_u16_at (int *,int) ;

__attribute__((used)) static void
auth_error_encode(struct query_info* qinfo, struct module_env* env,
 struct edns_data* edns, struct comm_reply* repinfo, sldns_buffer* buf,
 struct regional* temp, int rcode)
{
 edns->edns_version = EDNS_ADVERTISED_VERSION;
 edns->udp_size = EDNS_ADVERTISED_SIZE;
 edns->ext_rcode = 0;
 edns->bits &= EDNS_DO;

 if(!inplace_cb_reply_local_call(env, qinfo, ((void*)0), ((void*)0),
  rcode, edns, repinfo, temp))
  edns->opt_list = ((void*)0);
 error_encode(buf, rcode|BIT_AA, qinfo,
  *(uint16_t*)sldns_buffer_begin(buf),
  sldns_buffer_read_u16_at(buf, 2), edns);
}
