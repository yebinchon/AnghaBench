
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct section_fixture {struct pt_block_cache* section; int name; } ;
struct ptunit_result {int dummy; } ;
struct pt_block_cache {int size; int nentries; } ;


 int pt_mk_section (struct pt_block_cache**,int ,int,int) ;
 int pt_section_alloc_bcache (struct pt_block_cache*) ;
 struct pt_block_cache* pt_section_bcache (struct pt_block_cache*) ;
 int pt_section_map (struct pt_block_cache*) ;
 int pt_section_unmap (struct pt_block_cache*) ;
 int ptu_int_eq (int,int ) ;
 int ptu_null (struct pt_block_cache*) ;
 struct ptunit_result ptu_passed () ;
 int ptu_ptr (struct pt_block_cache*) ;
 int ptu_uint_eq (int ,int ) ;
 int sfix_write (struct section_fixture*,int*) ;

__attribute__((used)) static struct ptunit_result bcache_alloc_free(struct section_fixture *sfix)
{
 uint8_t bytes[] = { 0xcc, 0x2, 0x4, 0x6 };
 struct pt_block_cache *bcache;
 int errcode;

 sfix_write(sfix, bytes);

 errcode = pt_mk_section(&sfix->section, sfix->name, 0x1ull, 0x3ull);
 ptu_int_eq(errcode, 0);
 ptu_ptr(sfix->section);

 errcode = pt_section_map(sfix->section);
 ptu_int_eq(errcode, 0);

 errcode = pt_section_alloc_bcache(sfix->section);
 ptu_int_eq(errcode, 0);

 bcache = pt_section_bcache(sfix->section);
 ptu_ptr(bcache);
 ptu_uint_eq(bcache->nentries, sfix->section->size);

 errcode = pt_section_unmap(sfix->section);
 ptu_int_eq(errcode, 0);

 bcache = pt_section_bcache(sfix->section);
 ptu_null(bcache);

 return ptu_passed();
}
