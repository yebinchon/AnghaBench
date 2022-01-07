
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msec; } ;
struct test_fixture {int section; TYPE_1__ mcache; int image; } ;
struct ptunit_result {int dummy; } ;
typedef struct pt_section const pt_section ;
typedef struct pt_section pt_mapped_section ;


 int pt_msec_cache_read (TYPE_1__*,struct pt_section const**,int *,unsigned long long) ;
 struct pt_section* pt_msec_section (struct pt_section const*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr_eq (struct pt_section const*,int *) ;

__attribute__((used)) static struct ptunit_result read(struct test_fixture *tfix)
{
 const struct pt_mapped_section *msec;
 struct pt_section *section;
 int status;

 status = pt_msec_cache_read(&tfix->mcache, &msec, &tfix->image, 0ull);
 ptu_int_eq(status, 0);

 ptu_ptr_eq(msec, &tfix->mcache.msec);

 section = pt_msec_section(msec);
 ptu_ptr_eq(section, &tfix->section);

 return ptu_passed();
}
