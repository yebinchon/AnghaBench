
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct regcache {int dummy; } ;
typedef int buf ;
typedef int CORE_ADDR ;


 scalar_t__ BIAS ;
 int SPARC64_D0_REGNUM ;
 int SPARC64_D10_REGNUM ;
 int SPARC64_Q0_REGNUM ;
 int SPARC64_Q8_REGNUM ;
 int SPARC_O0_REGNUM ;
 int TYPE_LENGTH (struct type*) ;
 char* VALUE_CONTENTS (struct value*) ;
 struct type* VALUE_TYPE (struct value*) ;
 int builtin_type_int64 ;
 int gdb_assert (int) ;
 int lookup_pointer_type (struct type*) ;
 char* memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int regcache_cooked_write (struct regcache*,int,char*) ;
 int regcache_cooked_write_unsigned (struct regcache*,int,int) ;
 scalar_t__ sparc64_16_byte_align_p (struct type*) ;
 scalar_t__ sparc64_floating_p (struct type*) ;
 int sparc64_integral_or_pointer_p (struct type*) ;
 int sparc64_store_floating_fields (struct regcache*,struct type*,char*,int,int ) ;
 scalar_t__ sparc64_structure_or_union_p (struct type*) ;
 struct value* value_cast (int ,struct value*) ;
 struct value* value_from_pointer (int ,int) ;
 int write_memory (int,char*,int) ;

__attribute__((used)) static CORE_ADDR
sparc64_store_arguments (struct regcache *regcache, int nargs,
    struct value **args, CORE_ADDR sp,
    int struct_return, CORE_ADDR struct_addr)
{

  int num_elements = 0;
  int element = 0;
  int i;


  sp += BIAS;




  if (struct_return)
    num_elements++;

  for (i = 0; i < nargs; i++)
    {
      struct type *type = VALUE_TYPE (args[i]);
      int len = TYPE_LENGTH (type);

      if (sparc64_structure_or_union_p (type))
 {

   if (len <= 16)
     {
       if (num_elements % 2 && sparc64_16_byte_align_p (type))
  num_elements++;
       num_elements += ((len + 7) / 8);
     }
   else
     {
       sp -= len;




       sp &= ~0xf;

       write_memory (sp, VALUE_CONTENTS (args[i]), len);
       args[i] = value_from_pointer (lookup_pointer_type (type), sp);
       num_elements++;
     }
 }
      else if (sparc64_floating_p (type))
 {


   if (len == 16)
     {



       num_elements += 2;





       if (num_elements % 2)
  num_elements++;
     }
   else
     num_elements++;
 }
      else
 {

   gdb_assert (sparc64_integral_or_pointer_p (type));





   if (len < 8)
     args[i] = value_cast (builtin_type_int64, args[i]);
   num_elements++;
 }
    }


  sp -= num_elements * 8;


  sp &= ~0xf;
  if (struct_return)
    {
      regcache_cooked_write_unsigned (regcache, SPARC_O0_REGNUM, struct_addr);
      element++;
    }

  for (i = 0; i < nargs; i++)
    {
      char *valbuf = VALUE_CONTENTS (args[i]);
      struct type *type = VALUE_TYPE (args[i]);
      int len = TYPE_LENGTH (type);
      int regnum = -1;
      char buf[16];

      if (sparc64_structure_or_union_p (type))
 {

   gdb_assert (len <= 16);
   memset (buf, 0, sizeof (buf));
   valbuf = memcpy (buf, valbuf, len);

   if (element % 2 && sparc64_16_byte_align_p (type))
     element++;

   if (element < 6)
     {
       regnum = SPARC_O0_REGNUM + element;
       if (len > 8 && element < 5)
  regcache_cooked_write (regcache, regnum + 1, valbuf + 8);
     }

   if (element < 16)
     sparc64_store_floating_fields (regcache, type, valbuf, element, 0);
 }
      else if (sparc64_floating_p (type))
 {

   if (len == 16)
     {
       if (element % 2)
  element++;
       if (element < 16)
  regnum = SPARC64_Q0_REGNUM + element / 2;
     }
   else if (len == 8)
     {
       if (element < 16)
  regnum = SPARC64_D0_REGNUM + element;
     }
   else
     {






       memset (buf, 0, 4);
       memcpy (buf + 4, valbuf, 4);
       valbuf = buf;
       len = 8;
       if (element < 16)
  regnum = SPARC64_D0_REGNUM + element;
     }
 }
      else
 {

   gdb_assert (len == 8);
   if (element < 6)
     regnum = SPARC_O0_REGNUM + element;
 }

      if (regnum != -1)
 {
   regcache_cooked_write (regcache, regnum, valbuf);



   if (regnum >= SPARC64_D0_REGNUM && regnum <= SPARC64_D10_REGNUM)
     {
       gdb_assert (element < 6);
       regnum = SPARC_O0_REGNUM + element;
       regcache_cooked_write (regcache, regnum, valbuf);
     }
   else if (regnum >= SPARC64_Q0_REGNUM && regnum <= SPARC64_Q8_REGNUM)
     {
       gdb_assert (element < 6);
       regnum = SPARC_O0_REGNUM + element;
       regcache_cooked_write (regcache, regnum, valbuf);
       regcache_cooked_write (regcache, regnum + 1, valbuf);
     }
 }


      write_memory (sp + element * 8, valbuf, len);
      element += ((len + 7) / 8);
    }

  gdb_assert (element == num_elements);


  sp -= BIAS;
  return sp;
}
