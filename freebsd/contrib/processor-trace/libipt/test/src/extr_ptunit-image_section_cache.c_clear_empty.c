
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct iscache_fixture {int iscache; } ;


 int pt_iscache_clear (int *) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result clear_empty(struct iscache_fixture *cfix)
{
 int errcode;

 errcode = pt_iscache_clear(&cfix->iscache);
 ptu_int_eq(errcode, 0);

 return ptu_passed();
}
