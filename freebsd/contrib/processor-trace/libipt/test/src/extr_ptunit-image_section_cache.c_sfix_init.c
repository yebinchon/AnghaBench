
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct TYPE_2__ {int limit; } ;
struct iscache_fixture {int * section; TYPE_1__ iscache; } ;


 int cfix_init ;
 int num_sections ;
 int pt_iscache_add (TYPE_1__*,int ,unsigned long long) ;
 int ptu_int_ge (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_test (int ,struct iscache_fixture*) ;

__attribute__((used)) static struct ptunit_result sfix_init(struct iscache_fixture *cfix)
{
 int status, idx;

 ptu_test(cfix_init, cfix);

 cfix->iscache.limit = 0x7800;

 for (idx = 0; idx < num_sections; ++idx) {
  status = pt_iscache_add(&cfix->iscache, cfix->section[idx],
     0ull);
  ptu_int_ge(status, 0);
 }

 return ptu_passed();
}
