
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;


 int pt_pkt_free_decoder (int *) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result free_decoder_null(void)
{
 pt_pkt_free_decoder(((void*)0));

 return ptu_passed();
}
