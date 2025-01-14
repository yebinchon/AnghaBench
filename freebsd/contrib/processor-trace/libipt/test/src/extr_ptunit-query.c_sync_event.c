
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct ptunit_result {int dummy; } ;
struct TYPE_7__ {int ip; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {TYPE_3__ last_ip; int config; struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_packet_ip {int ipc; int ip; } ;
struct TYPE_5__ {unsigned long long ip; int speculative; int aborted; } ;
struct TYPE_6__ {TYPE_1__ tsx; } ;
struct pt_event {unsigned long long status_update; unsigned long long ip_suppressed; int type; int has_tsc; TYPE_2__ variant; } ;
typedef int event ;
typedef enum pt_ip_compression { ____Placeholder_pt_ip_compression } pt_ip_compression ;


 int pt_encode_fup (struct pt_encoder*,int,int) ;
 int pt_encode_mode_tsx (struct pt_encoder*,int ) ;
 int pt_encode_psb (struct pt_encoder*) ;
 int pt_encode_psbend (struct pt_encoder*) ;






 int pt_last_ip_init (TYPE_3__*) ;
 int pt_last_ip_update_ip (TYPE_3__*,struct pt_packet_ip*,int *) ;
 int pt_mob_tsx_intx ;
 int pt_qry_event (struct pt_query_decoder*,struct pt_event*,int) ;
 int pt_qry_sync_forward (struct pt_query_decoder*,unsigned long long*) ;
 int ptev_tsx ;
 int pts_eos ;
 int pts_event_pending ;
 int pts_ip_suppressed ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (unsigned long long,int ) ;
 int ptu_uint_ne (unsigned long long,int ) ;

__attribute__((used)) static struct ptunit_result sync_event(struct ptu_decoder_fixture *dfix,
           enum pt_ip_compression ipc)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 struct pt_packet_ip packet;
 struct pt_event event;
 uint64_t addr = 0ull;
 int errcode;

 packet.ipc = ipc;
 packet.ip = 0xccull;

 pt_last_ip_init(&dfix->last_ip);
 pt_last_ip_update_ip(&dfix->last_ip, &packet, &dfix->config);

 pt_encode_psb(encoder);
 pt_encode_mode_tsx(encoder, pt_mob_tsx_intx);
 pt_encode_fup(encoder, packet.ip, packet.ipc);
 pt_encode_psbend(encoder);

 errcode = pt_qry_sync_forward(decoder, &addr);
 switch (ipc) {
 case 131:
  ptu_int_eq(errcode, (pts_event_pending | pts_ip_suppressed));
  break;

 case 130:
 case 129:
 case 128:
 case 132:
 case 133:
  ptu_int_eq(errcode, pts_event_pending);
  ptu_uint_eq(addr, dfix->last_ip.ip);
  break;
 }

 errcode = pt_qry_event(decoder, &event, sizeof(event));
 ptu_int_eq(errcode, pts_eos);
 ptu_uint_ne(event.status_update, 0);
 if (ipc == 131)
  ptu_uint_ne(event.ip_suppressed, 0);
 else {
  ptu_uint_eq(event.ip_suppressed, 0);
  ptu_uint_eq(event.variant.tsx.ip, dfix->last_ip.ip);
 }
 ptu_int_eq(event.type, ptev_tsx);
 ptu_int_eq(event.variant.tsx.speculative, 1);
 ptu_int_eq(event.variant.tsx.aborted, 0);
 ptu_int_eq(event.has_tsc, 0);

 return ptu_passed();
}
