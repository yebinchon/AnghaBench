
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct TYPE_7__ {int used; int lru; int limit; } ;
struct iscache_fixture {TYPE_3__ iscache; TYPE_1__** section; } ;
struct TYPE_6__ {int size; } ;


 int pt_iscache_add (TYPE_3__*,TYPE_1__*,int) ;
 int pt_iscache_clear (TYPE_3__*) ;
 int pt_section_map (TYPE_1__*) ;
 int pt_section_unmap (TYPE_1__*) ;
 int ptu_int_eq (int,int ) ;
 int ptu_int_gt (int,int ) ;
 int ptu_null (int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int ,unsigned long long) ;

__attribute__((used)) static struct ptunit_result lru_clear(struct iscache_fixture *cfix)
{
 int status, isid;

 cfix->iscache.limit = cfix->section[0]->size;
 ptu_uint_eq(cfix->iscache.used, 0ull);
 ptu_null(cfix->iscache.lru);

 isid = pt_iscache_add(&cfix->iscache, cfix->section[0], 0xa000ull);
 ptu_int_gt(isid, 0);

 status = pt_section_map(cfix->section[0]);
 ptu_int_eq(status, 0);

 status = pt_section_unmap(cfix->section[0]);
 ptu_int_eq(status, 0);

 status = pt_iscache_clear(&cfix->iscache);
 ptu_int_eq(status, 0);

 ptu_null(cfix->iscache.lru);
 ptu_uint_eq(cfix->iscache.used, 0ull);

 return ptu_passed();
}
