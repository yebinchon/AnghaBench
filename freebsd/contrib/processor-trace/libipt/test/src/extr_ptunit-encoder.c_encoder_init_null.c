
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct pt_config {int dummy; } ;


 int pt_encoder_init (struct pt_encoder*,struct pt_config*) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result encoder_init_null(void)
{
 struct pt_encoder encoder;
 struct pt_config config;
 int errcode;

 errcode = pt_encoder_init(((void*)0), &config);
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_encoder_init(&encoder, ((void*)0));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
