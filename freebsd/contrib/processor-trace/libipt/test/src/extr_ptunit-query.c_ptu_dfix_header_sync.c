
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct TYPE_2__ {int begin; } ;
struct pt_query_decoder {TYPE_1__ config; int pos; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;


 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result
ptu_dfix_header_sync(struct ptu_decoder_fixture *dfix)
{
 struct pt_query_decoder *decoder = &dfix->decoder;


 decoder->pos = decoder->config.begin;

 return ptu_passed();
}
