
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct section_fixture {TYPE_1__* section; int name; } ;
struct ptunit_result {int dummy; } ;
struct pt_bcache_entry {int dummy; } ;
struct TYPE_7__ {int size; } ;


 int pt_mk_section (TYPE_1__**,int ,int,int) ;
 int pt_section_alloc_bcache (TYPE_1__*) ;
 int pt_section_map (TYPE_1__*) ;
 int pt_section_memsize (TYPE_1__*,int *) ;
 int pt_section_unmap (TYPE_1__*) ;
 int ptu_int_eq (int,int ) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (TYPE_1__*) ;
 int ptu_uint_ge (int ,int) ;
 int sfix_write (struct section_fixture*,int*) ;

__attribute__((used)) static struct ptunit_result memsize_map_bcache(struct section_fixture *sfix)
{
 uint64_t memsize;
 uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
 int errcode;

 sfix_write(sfix, bytes);

 errcode = pt_mk_section(&sfix->section, sfix->name, 0x1ull, 0x3ull);
 ptu_int_eq(errcode, 0);
 ptu_ptr(sfix->section);

 errcode = pt_section_map(sfix->section);
 ptu_int_eq(errcode, 0);

 errcode = pt_section_alloc_bcache(sfix->section);
 ptu_int_eq(errcode, 0);

 errcode = pt_section_memsize(sfix->section, &memsize);
 ptu_int_eq(errcode, 0);
 ptu_uint_ge(memsize,
      sfix->section->size * sizeof(struct pt_bcache_entry));

 errcode = pt_section_unmap(sfix->section);
 ptu_int_eq(errcode, 0);

 return ptu_passed();
}
