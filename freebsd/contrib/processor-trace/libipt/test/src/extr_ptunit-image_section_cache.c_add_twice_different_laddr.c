
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct iscache_fixture {TYPE_1__** section; int iscache; } ;
struct TYPE_2__ {int acount; int ucount; } ;


 int pt_iscache_add (int *,TYPE_1__*,unsigned long long) ;
 int ptu_int_eq (int ,int) ;
 int ptu_int_gt (int,int ) ;
 int ptu_int_ne (int,int) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result
add_twice_different_laddr(struct iscache_fixture *cfix)
{
 int isid[2];

 isid[0] = pt_iscache_add(&cfix->iscache, cfix->section[0], 0ull);
 ptu_int_gt(isid[0], 0);

 isid[1] = pt_iscache_add(&cfix->iscache, cfix->section[0], 1ull);
 ptu_int_gt(isid[1], 0);


 ptu_int_ne(isid[1], isid[0]);


 ptu_int_eq(cfix->section[0]->ucount, 3);
 ptu_int_eq(cfix->section[0]->acount, 2);

 return ptu_passed();
}
