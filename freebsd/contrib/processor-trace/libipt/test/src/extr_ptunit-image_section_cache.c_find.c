
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_section {int size; int offset; int filename; } ;
struct iscache_fixture {int iscache; struct pt_section** section; } ;


 int pt_iscache_add (int *,struct pt_section*,unsigned long long) ;
 int pt_iscache_find (int *,int ,int ,int ,unsigned long long) ;
 int ptu_int_eq (int,int) ;
 int ptu_int_gt (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_section*) ;

__attribute__((used)) static struct ptunit_result find(struct iscache_fixture *cfix)
{
 struct pt_section *section;
 int found, isid;

 section = cfix->section[0];
 ptu_ptr(section);

 isid = pt_iscache_add(&cfix->iscache, section, 0ull);
 ptu_int_gt(isid, 0);

 found = pt_iscache_find(&cfix->iscache, section->filename,
    section->offset, section->size, 0ull);
 ptu_int_eq(found, isid);

 return ptu_passed();
}
