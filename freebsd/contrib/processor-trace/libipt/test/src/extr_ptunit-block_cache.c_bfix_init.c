
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct bcache_fixture {int bcache; } ;


 int bfix_nentries ;
 int cfix_init ;
 int pt_bcache_alloc (int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (int ) ;
 int ptu_test (int ,struct bcache_fixture*) ;

__attribute__((used)) static struct ptunit_result bfix_init(struct bcache_fixture *bfix)
{
 ptu_test(cfix_init, bfix);

 bfix->bcache = pt_bcache_alloc(bfix_nentries);
 ptu_ptr(bfix->bcache);

 return ptu_passed();
}
