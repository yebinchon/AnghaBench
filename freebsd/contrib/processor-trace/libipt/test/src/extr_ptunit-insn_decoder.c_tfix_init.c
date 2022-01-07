
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pt_config {int * end; int * begin; } ;
struct test_fixture {int decoder; int * buffer; struct pt_config config; } ;
struct ptunit_result {int dummy; } ;


 int memset (int *,int ,int) ;
 int pt_config_init (struct pt_config*) ;
 int pt_insn_decoder_init (int *,struct pt_config*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result tfix_init(struct test_fixture *tfix)
{
 struct pt_config *config;
 uint8_t *buffer;
 int errcode;

 config = &tfix->config;
 buffer = tfix->buffer;

 memset(buffer, 0, sizeof(tfix->buffer));

 pt_config_init(config);
 config->begin = buffer;
 config->end = buffer + sizeof(tfix->buffer);

 errcode = pt_insn_decoder_init(&tfix->decoder, config);
 ptu_int_eq(errcode, 0);

 return ptu_passed();
}
