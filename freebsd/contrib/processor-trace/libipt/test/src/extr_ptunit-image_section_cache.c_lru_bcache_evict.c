
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ptunit_result {int dummy; } ;
struct TYPE_11__ {int limit; int used; TYPE_2__* lru; } ;
struct iscache_fixture {TYPE_1__** section; TYPE_7__ iscache; } ;
struct TYPE_10__ {struct TYPE_10__* next; int section; } ;
struct TYPE_9__ {int size; } ;


 int pt_iscache_add (TYPE_7__*,TYPE_1__*,int) ;
 int pt_section_map (TYPE_1__*) ;
 int pt_section_request_bcache (TYPE_1__*) ;
 int pt_section_unmap (TYPE_1__*) ;
 int ptu_int_eq (int,int ) ;
 int ptu_int_gt (int,int ) ;
 int ptu_null (TYPE_2__*) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (TYPE_2__*) ;
 int ptu_ptr_eq (int ,TYPE_1__*) ;
 int ptu_uint_eq (int ,int) ;

__attribute__((used)) static struct ptunit_result lru_bcache_evict(struct iscache_fixture *cfix)
{
 int status, isid;

 cfix->iscache.limit = 4 * cfix->section[0]->size +
  cfix->section[1]->size - 1;
 ptu_uint_eq(cfix->iscache.used, 0ull);
 ptu_null(cfix->iscache.lru);

 isid = pt_iscache_add(&cfix->iscache, cfix->section[0], 0xa000ull);
 ptu_int_gt(isid, 0);

 isid = pt_iscache_add(&cfix->iscache, cfix->section[1], 0xa000ull);
 ptu_int_gt(isid, 0);

 status = pt_section_map(cfix->section[0]);
 ptu_int_eq(status, 0);

 status = pt_section_unmap(cfix->section[0]);
 ptu_int_eq(status, 0);

 status = pt_section_map(cfix->section[1]);
 ptu_int_eq(status, 0);

 status = pt_section_unmap(cfix->section[1]);
 ptu_int_eq(status, 0);

 status = pt_section_request_bcache(cfix->section[0]);
 ptu_int_eq(status, 0);

 ptu_ptr(cfix->iscache.lru);
 ptu_ptr_eq(cfix->iscache.lru->section, cfix->section[0]);
 ptu_null(cfix->iscache.lru->next);
 ptu_uint_eq(cfix->iscache.used, 4 * cfix->section[0]->size);

 return ptu_passed();
}
