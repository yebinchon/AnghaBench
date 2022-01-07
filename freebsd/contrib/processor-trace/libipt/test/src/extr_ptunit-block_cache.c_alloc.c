
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct bcache_fixture {int bcache; } ;


 int pt_bcache_alloc (int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (int ) ;

__attribute__((used)) static struct ptunit_result alloc(struct bcache_fixture *bfix)
{
 bfix->bcache = pt_bcache_alloc(0x10000ull);
 ptu_ptr(bfix->bcache);

 return ptu_passed();
}
