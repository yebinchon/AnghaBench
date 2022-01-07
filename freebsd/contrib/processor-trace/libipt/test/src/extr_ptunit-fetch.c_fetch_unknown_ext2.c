
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct pt_decoder_function {int dummy; } ;
struct TYPE_2__ {int * begin; } ;
struct fetch_fixture {TYPE_1__ config; } ;


 int pt_decode_unknown ;
 int pt_df_fetch (struct pt_decoder_function const**,int *,TYPE_1__*) ;
 int pt_ext2_bad ;
 int pt_ext_ext2 ;
 int pt_opc_ext ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr_eq (struct pt_decoder_function const*,int *) ;

__attribute__((used)) static struct ptunit_result fetch_unknown_ext2(struct fetch_fixture *ffix)
{
 const struct pt_decoder_function *dfun;
 int errcode;

 ffix->config.begin[0] = pt_opc_ext;
 ffix->config.begin[1] = pt_ext_ext2;
 ffix->config.begin[2] = pt_ext2_bad;

 errcode = pt_df_fetch(&dfun, ffix->config.begin, &ffix->config);
 ptu_int_eq(errcode, 0);
 ptu_ptr_eq(dfun, &pt_decode_unknown);

 return ptu_passed();
}
