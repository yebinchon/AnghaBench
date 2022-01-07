
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ucount; int mcount; } ;
struct TYPE_4__ {int msec; } ;
struct test_fixture {TYPE_1__ section; TYPE_2__ mcache; } ;
struct ptunit_result {int dummy; } ;
struct pt_section {int dummy; } ;


 int pt_msec_cache_invalidate (TYPE_2__*) ;
 struct pt_section* pt_msec_section (int *) ;
 int ptu_int_eq (int,int ) ;
 int ptu_null (struct pt_section*) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,int ) ;

__attribute__((used)) static struct ptunit_result invalidate(struct test_fixture *tfix)
{
 struct pt_section *section;
 int status;

 status = pt_msec_cache_invalidate(&tfix->mcache);
 ptu_int_eq(status, 0);

 section = pt_msec_section(&tfix->mcache.msec);
 ptu_null(section);

 ptu_uint_eq(tfix->section.mcount, 0);
 ptu_uint_eq(tfix->section.ucount, 0);

 return ptu_passed();
}
