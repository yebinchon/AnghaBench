
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef int CORE_ADDR ;


 int BIAS ;
 int SPARC_O7_REGNUM ;
 int SPARC_SP_REGNUM ;
 int gdb_assert (int) ;
 int regcache_cooked_write_unsigned (struct regcache*,int ,int) ;
 int sparc64_store_arguments (struct regcache*,int,struct value**,int,int,int) ;

__attribute__((used)) static CORE_ADDR
sparc64_push_dummy_call (struct gdbarch *gdbarch, CORE_ADDR func_addr,
    struct regcache *regcache, CORE_ADDR bp_addr,
    int nargs, struct value **args, CORE_ADDR sp,
    int struct_return, CORE_ADDR struct_addr)
{

  regcache_cooked_write_unsigned (regcache, SPARC_O7_REGNUM, bp_addr - 8);


  sp = sparc64_store_arguments (regcache, nargs, args, sp,
    struct_return, struct_addr);


  sp -= 16 * 8;


  gdb_assert ((sp + BIAS) % 16 == 0);


  regcache_cooked_write_unsigned (regcache, SPARC_SP_REGNUM, sp);

  return sp;
}
