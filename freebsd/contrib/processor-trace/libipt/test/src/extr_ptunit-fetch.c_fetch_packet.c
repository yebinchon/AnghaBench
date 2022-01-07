
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct pt_packet {int dummy; } ;
struct pt_decoder_function {int dummy; } ;
struct TYPE_2__ {int begin; } ;
struct fetch_fixture {TYPE_1__ config; int encoder; } ;


 int pt_df_fetch (struct pt_decoder_function const**,int ,TYPE_1__*) ;
 int pt_enc_next (int *,struct pt_packet const*) ;
 int ptu_int_eq (int,int ) ;
 int ptu_int_ge (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr_eq (struct pt_decoder_function const*,struct pt_decoder_function const*) ;

__attribute__((used)) static struct ptunit_result fetch_packet(struct fetch_fixture *ffix,
      const struct pt_packet *packet,
      const struct pt_decoder_function *df)
{
 const struct pt_decoder_function *dfun;
 int errcode;

 errcode = pt_enc_next(&ffix->encoder, packet);
 ptu_int_ge(errcode, 0);

 errcode = pt_df_fetch(&dfun, ffix->config.begin, &ffix->config);
 ptu_int_eq(errcode, 0);
 ptu_ptr_eq(dfun, df);

 return ptu_passed();
}
