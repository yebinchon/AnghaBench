
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct fetch_fixture {int encoder; } ;


 int pt_encoder_fini (int *) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result ffix_fini(struct fetch_fixture *ffix)
{
 pt_encoder_fini(&ffix->encoder);

 return ptu_passed();
}
