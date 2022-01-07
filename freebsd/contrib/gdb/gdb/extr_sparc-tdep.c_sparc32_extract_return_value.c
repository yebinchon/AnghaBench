
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache {int dummy; } ;


 int SPARC_F0_REGNUM ;
 int SPARC_F1_REGNUM ;
 int SPARC_O0_REGNUM ;
 int SPARC_O1_REGNUM ;
 int TYPE_LENGTH (struct type*) ;
 int gdb_assert (int) ;
 int memcpy (void*,char*,int) ;
 int regcache_cooked_read (struct regcache*,int ,char*) ;
 scalar_t__ sparc_floating_p (struct type*) ;
 int sparc_integral_or_pointer_p (struct type*) ;
 int sparc_structure_or_union_p (struct type*) ;

__attribute__((used)) static void
sparc32_extract_return_value (struct type *type, struct regcache *regcache,
         void *valbuf)
{
  int len = TYPE_LENGTH (type);
  char buf[8];

  gdb_assert (!sparc_structure_or_union_p (type));
  gdb_assert (!(sparc_floating_p (type) && len == 16));

  if (sparc_floating_p (type))
    {

      regcache_cooked_read (regcache, SPARC_F0_REGNUM, buf);
      if (len > 4)
 regcache_cooked_read (regcache, SPARC_F1_REGNUM, buf + 4);
      memcpy (valbuf, buf, len);
    }
  else
    {

      gdb_assert (sparc_integral_or_pointer_p (type));

      regcache_cooked_read (regcache, SPARC_O0_REGNUM, buf);
      if (len > 4)
 {
   regcache_cooked_read (regcache, SPARC_O1_REGNUM, buf + 4);
   gdb_assert (len == 8);
   memcpy (valbuf, buf, 8);
 }
      else
 {


   memcpy (valbuf, buf + 4 - len, len);
 }
    }
}
