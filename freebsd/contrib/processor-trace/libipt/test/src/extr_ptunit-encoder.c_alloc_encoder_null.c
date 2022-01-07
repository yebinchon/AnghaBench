
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;


 struct pt_encoder* pt_alloc_encoder (int *) ;
 int ptu_null (struct pt_encoder*) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result alloc_encoder_null(void)
{
 struct pt_encoder *encoder;

 encoder = pt_alloc_encoder(((void*)0));
 ptu_null(encoder);

 return ptu_passed();
}
