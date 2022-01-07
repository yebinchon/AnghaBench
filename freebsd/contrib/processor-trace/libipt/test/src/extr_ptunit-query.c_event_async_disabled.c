
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_6__ {int ip; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {TYPE_3__ last_ip; int config; struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_packet_ip {int ipc; int ip; } ;
struct TYPE_4__ {int at; int ip; } ;
struct TYPE_5__ {TYPE_1__ async_disabled; } ;
struct pt_event {int type; int has_tsc; int tsc; TYPE_2__ variant; int ip_suppressed; } ;
typedef int event ;
typedef enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;


 int pt_dfix_max_ip ;
 int pt_dfix_sext_ip ;
 int pt_encode_fup (struct pt_encoder*,int ,int) ;
 int pt_encode_tip_pgd (struct pt_encoder*,int ,int) ;
 int pt_ipc_sext_48 ;
 int pt_ipc_suppressed ;
 int pt_last_ip_update_ip (TYPE_3__*,struct pt_packet_ip*,int *) ;
 int pt_qry_event (struct pt_query_decoder*,struct pt_event*,int) ;
 int ptev_async_disabled ;
 int pts_eos ;
 int ptu_check (int ,struct pt_query_decoder*) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_sync_decoder ;
 int ptu_uint_eq (int ,int ) ;
 int ptu_uint_ne (int ,int ) ;

__attribute__((used)) static struct ptunit_result
event_async_disabled(struct ptu_decoder_fixture *dfix,
       enum pt_ip_compression ipc, uint64_t tsc)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 struct pt_packet_ip fup, tip;
 struct pt_event event;
 int errcode;

 fup.ipc = pt_ipc_sext_48;
 fup.ip = pt_dfix_max_ip;
 pt_last_ip_update_ip(&dfix->last_ip, &fup, &dfix->config);

 tip.ipc = ipc;
 tip.ip = pt_dfix_sext_ip;
 pt_last_ip_update_ip(&dfix->last_ip, &tip, &dfix->config);

 pt_encode_fup(encoder, fup.ip, fup.ipc);
 pt_encode_tip_pgd(encoder, tip.ip, tip.ipc);

 ptu_check(ptu_sync_decoder, decoder);

 errcode = pt_qry_event(decoder, &event, sizeof(event));
 ptu_int_eq(errcode, pts_eos);
 if (ipc == pt_ipc_suppressed)
  ptu_uint_ne(event.ip_suppressed, 0);
 else {
  ptu_uint_eq(event.ip_suppressed, 0);
  ptu_uint_eq(event.variant.async_disabled.ip, dfix->last_ip.ip);
 }
 ptu_int_eq(event.type, ptev_async_disabled);
 ptu_uint_eq(event.variant.async_disabled.at, fup.ip);

 if (!tsc)
  ptu_int_eq(event.has_tsc, 0);
 else {
  ptu_int_eq(event.has_tsc, 1);
  ptu_uint_eq(event.tsc, tsc);
 }

 return ptu_passed();
}
