
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ptunit_result {int dummy; } ;
struct iscache_fixture {int iscache; int * section; } ;


 int pt_iscache_add (int *,int ,int) ;
 int pt_iscache_read (int *,int*,unsigned long long,int,int) ;
 int pte_nomap ;
 int ptu_int_eq (int,int ) ;
 int ptu_int_gt (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result read_bad_vaddr(struct iscache_fixture *cfix)
{
 uint8_t buffer[] = { 0xcc };
 int status, isid;

 isid = pt_iscache_add(&cfix->iscache, cfix->section[0], 0xa000ull);
 ptu_int_gt(isid, 0);

 status = pt_iscache_read(&cfix->iscache, buffer, 1ull, isid, 0xb000ull);
 ptu_int_eq(status, -pte_nomap);
 ptu_uint_eq(buffer[0], 0xcc);

 return ptu_passed();
}
