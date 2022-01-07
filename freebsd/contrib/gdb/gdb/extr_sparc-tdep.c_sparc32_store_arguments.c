
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct regcache {int dummy; } ;
typedef int CORE_ADDR ;


 int SPARC_O0_REGNUM ;
 int TYPE_LENGTH (struct type*) ;
 char* VALUE_CONTENTS (struct value*) ;
 struct type* VALUE_TYPE (struct value*) ;
 int builtin_type_int32 ;
 int gdb_assert (int) ;
 int lookup_pointer_type (struct type*) ;
 int max (int,int) ;
 int regcache_cooked_write (struct regcache*,int,char*) ;
 scalar_t__ sparc_floating_p (struct type*) ;
 int sparc_integral_or_pointer_p (struct type*) ;
 scalar_t__ sparc_structure_or_union_p (struct type*) ;
 int store_unsigned_integer (char*,int,int) ;
 struct value* value_cast (int ,struct value*) ;
 struct value* value_from_pointer (int ,int) ;
 int write_memory (int,char*,int) ;

__attribute__((used)) static CORE_ADDR
sparc32_store_arguments (struct regcache *regcache, int nargs,
    struct value **args, CORE_ADDR sp,
    int struct_return, CORE_ADDR struct_addr)
{

  int num_elements = 0;
  int element = 0;
  int i;

  for (i = 0; i < nargs; i++)
    {
      struct type *type = VALUE_TYPE (args[i]);
      int len = TYPE_LENGTH (type);

      if (sparc_structure_or_union_p (type)
   || (sparc_floating_p (type) && len == 16))
 {

   sp -= len;



   sp &= ~0x7;

   write_memory (sp, VALUE_CONTENTS (args[i]), len);
   args[i] = value_from_pointer (lookup_pointer_type (type), sp);
   num_elements++;
 }
      else if (sparc_floating_p (type))
 {

   gdb_assert (len == 4 || len == 8);
   num_elements += (len / 4);
 }
      else
 {

   gdb_assert (sparc_integral_or_pointer_p (type));

   if (len < 4)
     args[i] = value_cast (builtin_type_int32, args[i]);
   num_elements += ((len + 3) / 4);
 }
    }


  sp -= max (6, num_elements) * 4;



  sp -= 4;




  sp &= ~0x7;

  for (i = 0; i < nargs; i++)
    {
      char *valbuf = VALUE_CONTENTS (args[i]);
      struct type *type = VALUE_TYPE (args[i]);
      int len = TYPE_LENGTH (type);

      gdb_assert (len == 4 || len == 8);

      if (element < 6)
 {
   int regnum = SPARC_O0_REGNUM + element;

   regcache_cooked_write (regcache, regnum, valbuf);
   if (len > 4 && element < 5)
     regcache_cooked_write (regcache, regnum + 1, valbuf + 4);
 }


      write_memory (sp + 4 + element * 4, valbuf, len);
      element += len / 4;
    }

  gdb_assert (element == num_elements);

  if (struct_return)
    {
      char buf[4];

      store_unsigned_integer (buf, 4, struct_addr);
      write_memory (sp, buf, 4);
    }

  return sp;
}
