
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct bcache_fixture {int bcache; } ;


 scalar_t__ UINT32_MAX ;
 int pt_bcache_alloc (scalar_t__) ;
 int ptu_null (int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result alloc_too_big(struct bcache_fixture *bfix)
{
 bfix->bcache = pt_bcache_alloc(UINT32_MAX + 1ull);
 ptu_null(bfix->bcache);

 return ptu_passed();
}
