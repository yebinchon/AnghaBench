
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct TYPE_2__ {int begin; } ;
struct pt_query_decoder {TYPE_1__ config; int pos; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;


 int pt_encode_mtc (struct pt_encoder*,int) ;
 int pt_encode_pad (struct pt_encoder*) ;
 int pt_encode_tsc (struct pt_encoder*,int) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result
ptu_dfix_header_event(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_encoder *encoder = &dfix->encoder;

 pt_encode_pad(encoder);
 pt_encode_mtc(encoder, 1);
 pt_encode_pad(encoder);
 pt_encode_tsc(encoder, 0x1000);


 decoder->pos = decoder->config.begin;

 return ptu_passed();
}
