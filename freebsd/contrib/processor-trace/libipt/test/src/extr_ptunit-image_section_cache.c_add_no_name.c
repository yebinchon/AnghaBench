
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;
struct iscache_fixture {int iscache; } ;
typedef int section ;


 int memset (struct pt_section*,int ,int) ;
 int pt_iscache_add (int *,struct pt_section*,unsigned long long) ;
 int pte_internal ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result add_no_name(struct iscache_fixture *cfix)
{
 struct pt_section section;
 int errcode;

 memset(&section, 0, sizeof(section));

 errcode = pt_iscache_add(&cfix->iscache, &section, 0ull);
 ptu_int_eq(errcode, -pte_internal);

 return ptu_passed();
}
