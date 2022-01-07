
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct pt_decoder_function {int dummy; } ;
struct TYPE_2__ {int end; } ;
struct fetch_fixture {TYPE_1__ config; } ;


 int pt_df_fetch (struct pt_decoder_function const**,int ,TYPE_1__*) ;
 int pte_eos ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result fetch_empty(struct fetch_fixture *ffix)
{
 const struct pt_decoder_function *dfun;
 int errcode;

 errcode = pt_df_fetch(&dfun, ffix->config.end, &ffix->config);
 ptu_int_eq(errcode, -pte_eos);

 return ptu_passed();
}
