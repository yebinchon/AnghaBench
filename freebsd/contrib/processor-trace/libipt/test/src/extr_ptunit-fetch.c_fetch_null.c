
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct pt_decoder_function {int dummy; } ;
struct TYPE_2__ {int * begin; } ;
struct fetch_fixture {TYPE_1__ config; } ;


 int pt_df_fetch (struct pt_decoder_function const**,int *,TYPE_1__*) ;
 int pte_internal ;
 int pte_nosync ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result fetch_null(struct fetch_fixture *ffix)
{
 const struct pt_decoder_function *dfun;
 int errcode;

 errcode = pt_df_fetch(((void*)0), ffix->config.begin, &ffix->config);
 ptu_int_eq(errcode, -pte_internal);

 errcode = pt_df_fetch(&dfun, ((void*)0), &ffix->config);
 ptu_int_eq(errcode, -pte_nosync);

 errcode = pt_df_fetch(&dfun, ffix->config.begin, ((void*)0));
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
