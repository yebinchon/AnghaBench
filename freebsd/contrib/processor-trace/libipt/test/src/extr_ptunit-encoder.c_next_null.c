
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_packet {int dummy; } ;
struct pt_encoder {int dummy; } ;


 int pt_enc_next (struct pt_encoder*,struct pt_packet*) ;
 int pte_invalid ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result next_null(void)
{
 struct pt_encoder encoder;
 struct pt_packet packet;
 int errcode;

 errcode = pt_enc_next(((void*)0), &packet);
 ptu_int_eq(errcode, -pte_invalid);

 errcode = pt_enc_next(&encoder, ((void*)0));
 ptu_int_eq(errcode, -pte_invalid);

 return ptu_passed();
}
