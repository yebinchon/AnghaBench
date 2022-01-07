
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_query_decoder {int dummy; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;
struct pt_event {int dummy; } ;
typedef int event ;


 int pt_qry_event (struct pt_query_decoder*,struct pt_event*,int) ;
 int pte_nosync ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result event_not_synced(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;
 struct pt_event event;
 int errcode;

 errcode = pt_qry_event(decoder, &event, sizeof(event));
 ptu_int_eq(errcode, -pte_nosync);

 return ptu_passed();
}
