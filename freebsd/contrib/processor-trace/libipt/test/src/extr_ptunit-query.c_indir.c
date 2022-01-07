
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_2__ {int ip; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {TYPE_1__ last_ip; int config; struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_packet_ip {int ipc; int ip; } ;
typedef enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;


 int pt_dfix_bad_ip ;
 int pt_dfix_sext_ip ;
 int pt_encode_tip (struct pt_encoder*,int ,int) ;
 int pt_ipc_suppressed ;
 int pt_last_ip_update_ip (TYPE_1__*,struct pt_packet_ip*,int *) ;
 int pt_qry_indirect_branch (struct pt_query_decoder*,int *) ;
 int pts_eos ;
 int pts_ip_suppressed ;
 int ptu_check (int ,struct pt_query_decoder*) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_sync_decoder ;
 int ptu_uint_eq (int ,int ) ;

__attribute__((used)) static struct ptunit_result indir(struct ptu_decoder_fixture *dfix,
      enum pt_ip_compression ipc)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 struct pt_packet_ip packet;
 uint64_t addr = pt_dfix_bad_ip;
 int errcode;

 packet.ipc = ipc;
 packet.ip = pt_dfix_sext_ip;
 pt_last_ip_update_ip(&dfix->last_ip, &packet, &dfix->config);

 pt_encode_tip(encoder, packet.ip, packet.ipc);

 ptu_check(ptu_sync_decoder, decoder);

 errcode = pt_qry_indirect_branch(decoder, &addr);
 if (ipc == pt_ipc_suppressed) {
  ptu_int_eq(errcode, pts_ip_suppressed | pts_eos);
  ptu_uint_eq(addr, pt_dfix_bad_ip);
 } else {
  ptu_int_eq(errcode, pts_eos);
  ptu_uint_eq(addr, dfix->last_ip.ip);
 }

 return ptu_passed();
}
