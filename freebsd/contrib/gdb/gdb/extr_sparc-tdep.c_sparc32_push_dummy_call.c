
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef int CORE_ADDR ;


 int SPARC_O7_REGNUM ;
 int SPARC_SP_REGNUM ;
 int gdb_assert (int) ;
 int regcache_cooked_write_unsigned (struct regcache*,int ,int) ;
 int sparc32_store_arguments (struct regcache*,int,struct value**,int,int,int) ;

__attribute__((used)) static CORE_ADDR
sparc32_push_dummy_call (struct gdbarch *gdbarch, CORE_ADDR func_addr,
    struct regcache *regcache, CORE_ADDR bp_addr,
    int nargs, struct value **args, CORE_ADDR sp,
    int struct_return, CORE_ADDR struct_addr)
{
  CORE_ADDR call_pc = (struct_return ? (bp_addr - 12) : (bp_addr - 8));


  regcache_cooked_write_unsigned (regcache, SPARC_O7_REGNUM, call_pc);


  sp = sparc32_store_arguments (regcache, nargs, args, sp,
    struct_return, struct_addr);


  sp -= 16 * 4;


  gdb_assert (sp % 8 == 0);


  regcache_cooked_write_unsigned (regcache, SPARC_SP_REGNUM, sp);

  return sp;
}
