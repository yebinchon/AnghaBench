
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;
struct pt_event {int type; int has_tsc; int tsc; } ;
typedef int event ;


 int pt_encode_stop (struct pt_encoder*) ;
 int pt_qry_event (struct pt_query_decoder*,struct pt_event*,int) ;
 int ptev_stop ;
 int pts_eos ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_sync_decoder (struct pt_query_decoder*) ;
 int ptu_uint_eq (int ,int ) ;

__attribute__((used)) static struct ptunit_result event_stop(struct ptu_decoder_fixture *dfix,
           uint64_t tsc)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;
 struct pt_event event;
 int errcode;

 pt_encode_stop(encoder);

 ptu_sync_decoder(decoder);

 errcode = pt_qry_event(decoder, &event, sizeof(event));
 ptu_int_eq(errcode, pts_eos);
 ptu_int_eq(event.type, ptev_stop);

 if (!tsc)
  ptu_int_eq(event.has_tsc, 0);
 else {
  ptu_int_eq(event.has_tsc, 1);
  ptu_uint_eq(event.tsc, tsc);
 }

 return ptu_passed();
}
