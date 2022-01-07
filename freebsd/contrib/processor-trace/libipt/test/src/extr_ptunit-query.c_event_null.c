
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_config {int begin; } ;
struct pt_query_decoder {int pos; struct pt_config config; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;
struct pt_event {int dummy; } ;
typedef int event ;


 int pt_qry_event (struct pt_query_decoder*,struct pt_event*,int) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr_eq (int ,int ) ;

__attribute__((used)) static struct ptunit_result event_null(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_config *config = &decoder->config;
 struct pt_event event;
 int errcode;

 errcode = pt_qry_event(((void*)0), &event, sizeof(event));
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_qry_event(decoder, ((void*)0), sizeof(event));
 ptu_int_eq(errcode, -pte_invalid);
 ptu_ptr_eq(decoder->pos, config->begin);

 return ptu_passed();
}
