
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptunit_result {int dummy; } ;
struct pt_section {int size; int offset; int filename; } ;
struct iscache_fixture {int iscache; struct pt_section** section; } ;


 int pt_iscache_find (int *,int ,int ,int ,unsigned long long) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_section*) ;

__attribute__((used)) static struct ptunit_result find_empty(struct iscache_fixture *cfix)
{
 struct pt_section *section;
 int found;

 section = cfix->section[0];
 ptu_ptr(section);

 found = pt_iscache_find(&cfix->iscache, section->filename,
    section->offset, section->size, 0ull);
 ptu_int_eq(found, 0);

 return ptu_passed();
}
