
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct TYPE_5__ {int non_root; int cr3; } ;
struct TYPE_4__ {int from; } ;
struct TYPE_6__ {TYPE_2__ async_paging; TYPE_1__ async_branch; } ;
struct pt_event {int type; int has_tsc; int tsc; TYPE_3__ variant; int ip_suppressed; } ;
typedef int event ;


 int pt_dfix_max_cr3 ;
 int pt_dfix_sext_ip ;
 int pt_encode_fup (struct pt_encoder*,int,int ) ;
 int pt_encode_pip (struct pt_encoder*,int,int) ;
 int pt_encode_tip (struct pt_encoder*,int ,int ) ;
 int pt_ipc_sext_48 ;
 int pt_ipc_suppressed ;
 int pt_pl_pip_nr ;
 int pt_qry_event (struct pt_query_decoder*,struct pt_event*,int) ;
 int ptev_async_branch ;
 int ptev_async_paging ;
 int pts_eos ;
 int pts_event_pending ;
 int ptu_check (int ,struct pt_query_decoder*) ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_sync_decoder ;
 int ptu_uint_eq (int ,int) ;
 int ptu_uint_ne (int ,int ) ;

__attribute__((used)) static struct ptunit_result
event_async_paging_suppressed(struct ptu_decoder_fixture *dfix, uint8_t flags,
         uint64_t tsc)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 struct pt_event event;
 uint64_t from = pt_dfix_sext_ip, cr3 = pt_dfix_max_cr3;
 int errcode;

 pt_encode_fup(encoder, from, pt_ipc_sext_48);
 pt_encode_pip(encoder, cr3, flags);
 pt_encode_tip(encoder, 0, pt_ipc_suppressed);

 ptu_check(ptu_sync_decoder, decoder);

 errcode = pt_qry_event(decoder, &event, sizeof(event));
 ptu_int_eq(errcode, pts_event_pending);
 ptu_uint_ne(event.ip_suppressed, 0);
 ptu_int_eq(event.type, ptev_async_branch);
 ptu_uint_eq(event.variant.async_branch.from, from);

 if (!tsc)
  ptu_int_eq(event.has_tsc, 0);
 else {
  ptu_int_eq(event.has_tsc, 1);
  ptu_uint_eq(event.tsc, tsc);
 }

 errcode = pt_qry_event(decoder, &event, sizeof(event));
 ptu_int_eq(errcode, pts_eos);
 ptu_uint_ne(event.ip_suppressed, 0);
 ptu_int_eq(event.type, ptev_async_paging);
 ptu_uint_eq(event.variant.async_paging.cr3, cr3);
 ptu_uint_eq(event.variant.async_paging.non_root,
      (flags & pt_pl_pip_nr) != 0);

 if (!tsc)
  ptu_int_eq(event.has_tsc, 0);
 else {
  ptu_int_eq(event.has_tsc, 1);
  ptu_uint_eq(event.tsc, tsc);
 }

 return ptu_passed();
}
