
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct iscache_fixture {int dummy; } ;


 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result init_fini(struct iscache_fixture *cfix)
{
 (void) cfix;


 return ptu_passed();
}
