
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct iscache_fixture {int iscache; } ;


 int dfix_init ;
 int pt_iscache_init (int *,int *) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct iscache_fixture*) ;

__attribute__((used)) static struct ptunit_result cfix_init(struct iscache_fixture *cfix)
{
 int errcode;

 ptu_test(dfix_init, cfix);

 errcode = pt_iscache_init(&cfix->iscache, ((void*)0));
 ptu_int_eq(errcode, 0);

 return ptu_passed();
}
