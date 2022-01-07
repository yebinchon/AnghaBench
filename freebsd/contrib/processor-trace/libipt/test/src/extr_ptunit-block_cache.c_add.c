
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ptunit_result {int dummy; } ;
struct pt_bcache_entry {int ninsn; int displacement; int isize; int qualifier; int mode; } ;
struct bcache_fixture {int bcache; } ;
typedef int exp ;
typedef int bce ;


 int memset (struct pt_bcache_entry*,int,int) ;
 int pt_bcache_add (int ,int ,struct pt_bcache_entry) ;
 int pt_bcache_lookup (struct pt_bcache_entry*,int ,int ) ;
 int pt_bce_exec_mode (struct pt_bcache_entry) ;
 int pt_bce_qualifier (struct pt_bcache_entry) ;
 int ptbq_decode ;
 int ptem_64bit ;
 int ptu_int_eq (int,int) ;
 struct ptunit_result ptu_passed () ;
 int ptu_uint_eq (int,int) ;

__attribute__((used)) static struct ptunit_result add(struct bcache_fixture *bfix, uint64_t index)
{
 struct pt_bcache_entry bce, exp;
 int errcode;

 memset(&bce, 0xff, sizeof(bce));
 memset(&exp, 0x00, sizeof(exp));

 exp.ninsn = 1;
 exp.displacement = 7;
 exp.mode = ptem_64bit;
 exp.qualifier = ptbq_decode;
 exp.isize = 7;

 errcode = pt_bcache_add(bfix->bcache, index, exp);
 ptu_int_eq(errcode, 0);

 errcode = pt_bcache_lookup(&bce, bfix->bcache, index);
 ptu_int_eq(errcode, 0);

 ptu_uint_eq(bce.ninsn, exp.ninsn);
 ptu_int_eq(bce.displacement, exp.displacement);
 ptu_uint_eq(pt_bce_exec_mode(bce), pt_bce_exec_mode(exp));
 ptu_uint_eq(pt_bce_qualifier(bce), pt_bce_qualifier(exp));
 ptu_uint_eq(bce.isize, exp.isize);

 return ptu_passed();
}
