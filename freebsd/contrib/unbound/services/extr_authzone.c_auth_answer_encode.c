
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct module_env {int dummy; } ;
struct edns_data {int bits; scalar_t__ ext_rcode; int udp_size; int edns_version; } ;
struct dns_msg {TYPE_1__* rep; } ;
struct comm_reply {int dummy; } ;
typedef int sldns_buffer ;
struct TYPE_3__ {int flags; } ;


 int BIT_AA ;
 int EDNS_ADVERTISED_SIZE ;
 int EDNS_ADVERTISED_VERSION ;
 int EDNS_DO ;
 scalar_t__ FLAGS_GET_RCODE (int ) ;
 int LDNS_RCODE_SERVFAIL ;
 int error_encode (int *,int,struct query_info*,int ,int ,struct edns_data*) ;
 int inplace_cb_reply_local_call (struct module_env*,struct query_info*,int *,TYPE_1__*,int,struct edns_data*,struct comm_reply*,struct regional*) ;
 int reply_info_answer_encode (struct query_info*,TYPE_1__*,int ,int ,int *,int ,int ,struct regional*,int ,struct edns_data*,int,int ) ;
 scalar_t__ sldns_buffer_begin (int *) ;
 int sldns_buffer_read_u16_at (int *,int) ;

__attribute__((used)) static void
auth_answer_encode(struct query_info* qinfo, struct module_env* env,
 struct edns_data* edns, struct comm_reply* repinfo, sldns_buffer* buf,
 struct regional* temp, struct dns_msg* msg)
{
 uint16_t udpsize;
 udpsize = edns->udp_size;
 edns->edns_version = EDNS_ADVERTISED_VERSION;
 edns->udp_size = EDNS_ADVERTISED_SIZE;
 edns->ext_rcode = 0;
 edns->bits &= EDNS_DO;

 if(!inplace_cb_reply_local_call(env, qinfo, ((void*)0), msg->rep,
  (int)FLAGS_GET_RCODE(msg->rep->flags), edns, repinfo, temp)
  || !reply_info_answer_encode(qinfo, msg->rep,
  *(uint16_t*)sldns_buffer_begin(buf),
  sldns_buffer_read_u16_at(buf, 2),
  buf, 0, 0, temp, udpsize, edns,
  (int)(edns->bits&EDNS_DO), 0)) {
  error_encode(buf, (LDNS_RCODE_SERVFAIL|BIT_AA), qinfo,
   *(uint16_t*)sldns_buffer_begin(buf),
   sldns_buffer_read_u16_at(buf, 2), edns);
 }
}
