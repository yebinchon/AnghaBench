
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_9__ {int ip; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {TYPE_4__ last_ip; int config; struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_packet_ip {int ipc; int ip; } ;
struct TYPE_7__ {int ip; } ;
struct TYPE_6__ {int speculative; int aborted; int ip; } ;
struct TYPE_8__ {TYPE_2__ overflow; TYPE_1__ tsx; } ;
struct pt_event {int type; int has_tsc; int tsc; TYPE_3__ variant; int status_update; } ;
typedef int event ;
typedef enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;


 int pt_dfix_max_ip ;
 int pt_encode_fup (struct pt_encoder*,int,int) ;
 int pt_encode_mode_tsx (struct pt_encoder*,int ) ;
 int pt_encode_ovf (struct pt_encoder*) ;
 int pt_encode_psb (struct pt_encoder*) ;
 int pt_encode_tsc (struct pt_encoder*,int) ;






 int pt_last_ip_init (TYPE_4__*) ;
 int pt_last_ip_update_ip (TYPE_4__*,struct pt_packet_ip*,int *) ;
 int pt_qry_event (struct pt_query_decoder*,struct pt_event*,int) ;
 int pt_qry_sync_forward (struct pt_query_decoder*,int *) ;
 int pte_noip ;
 int ptev_overflow ;
 int ptev_tsx ;
 int pts_eos ;
 int pts_event_pending ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int) ;
 int ptu_uint_ne (int ,int ) ;

__attribute__((used)) static struct ptunit_result sync_ovf_event(struct ptu_decoder_fixture *dfix,
        enum pt_ip_compression ipc)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 struct pt_packet_ip fup, ovf;
 struct pt_event event;
 uint64_t addr = 0;
 int errcode;

 fup.ipc = 132;
 fup.ip = pt_dfix_max_ip;

 ovf.ipc = ipc;
 ovf.ip = 0xccull;

 pt_last_ip_init(&dfix->last_ip);
 pt_last_ip_update_ip(&dfix->last_ip, &ovf, &dfix->config);

 pt_encode_psb(encoder);
 pt_encode_fup(encoder, fup.ip, fup.ipc);
 pt_encode_mode_tsx(encoder, 0);
 pt_encode_tsc(encoder, 0x1000);
 pt_encode_ovf(encoder);
 pt_encode_fup(encoder, ovf.ip, ovf.ipc);

 errcode = pt_qry_sync_forward(decoder, &addr);
 ptu_int_eq(errcode, pts_event_pending);
 ptu_uint_eq(addr, fup.ip);

 errcode = pt_qry_event(decoder, &event, sizeof(event));
 ptu_int_eq(errcode, pts_event_pending);
 ptu_uint_ne(event.status_update, 0);
 ptu_int_eq(event.type, ptev_tsx);
 ptu_int_eq(event.variant.tsx.speculative, 0);
 ptu_int_eq(event.variant.tsx.aborted, 0);
 ptu_uint_eq(event.variant.tsx.ip, fup.ip);
 ptu_int_eq(event.has_tsc, 1);
 ptu_uint_eq(event.tsc, 0x1000);

 errcode = pt_qry_event(decoder, &event, sizeof(event));
 switch (ipc) {
 case 131:
  ptu_int_eq(errcode, -pte_noip);
  return ptu_passed();

 case 130:
 case 129:
 case 128:
 case 132:
 case 133:
  ptu_int_eq(errcode, pts_eos);
  ptu_int_eq(event.type, ptev_overflow);
  ptu_uint_eq(event.variant.overflow.ip, dfix->last_ip.ip);
  ptu_int_eq(event.has_tsc, 1);
  ptu_uint_eq(event.tsc, 0x1000);
  break;
 }

 return ptu_passed();
}
