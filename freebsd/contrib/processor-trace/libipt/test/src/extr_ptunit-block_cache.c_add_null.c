
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_bcache_entry {int dummy; } ;
typedef int bce ;


 int memset (struct pt_bcache_entry*,int ,int) ;
 int pt_bcache_add (int *,unsigned long long,struct pt_bcache_entry) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result add_null(void)
{
 struct pt_bcache_entry bce;
 int errcode;

 memset(&bce, 0, sizeof(bce));

 errcode = pt_bcache_add(((void*)0), 0ull, bce);
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
