
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct image_fixture {TYPE_1__* status; TYPE_2__* section; int copy; } ;
struct TYPE_4__ {int mcount; int ucount; } ;
struct TYPE_3__ {int bad_put; int deleted; } ;


 int dfix_fini ;
 int ifix_nsecs ;
 int pt_image_fini (int *) ;
 int ptu_check (int ,struct image_fixture*) ;
 int ptu_int_eq (int ,int ) ;
 int ptu_int_le (int ,int) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result ifix_fini(struct image_fixture *ifix)
{
 int sec;

 ptu_check(dfix_fini, ifix);

 pt_image_fini(&ifix->copy);

 for (sec = 0; sec < ifix_nsecs; ++sec) {
  ptu_int_eq(ifix->section[sec].ucount, 0);
  ptu_int_eq(ifix->section[sec].mcount, 0);
  ptu_int_le(ifix->status[sec].deleted, 1);
  ptu_int_eq(ifix->status[sec].bad_put, 0);
 }

 return ptu_passed();
}
