
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache {int dummy; } ;


 int SPARC64_D0_REGNUM ;
 int SPARC64_Q0_REGNUM ;
 int SPARC_F0_REGNUM ;
 int SPARC_F1_REGNUM ;
 int TYPE_FIELD_BITPOS (struct type*,int) ;
 int TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_LENGTH (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;
 struct type* check_typedef (int ) ;
 int gdb_assert (int) ;
 int regcache_cooked_write (struct regcache*,int,char*) ;
 scalar_t__ sparc64_floating_p (struct type*) ;
 scalar_t__ sparc64_structure_or_union_p (struct type*) ;

__attribute__((used)) static void
sparc64_store_floating_fields (struct regcache *regcache, struct type *type,
          char *valbuf, int element, int bitpos)
{
  gdb_assert (element < 16);

  if (sparc64_floating_p (type))
    {
      int len = TYPE_LENGTH (type);
      int regnum;

      if (len == 16)
 {
   gdb_assert (bitpos == 0);
   gdb_assert ((element % 2) == 0);

   regnum = SPARC64_Q0_REGNUM + element / 2;
   regcache_cooked_write (regcache, regnum, valbuf);
 }
      else if (len == 8)
 {
   gdb_assert (bitpos == 0 || bitpos == 64);

   regnum = SPARC64_D0_REGNUM + element + bitpos / 64;
   regcache_cooked_write (regcache, regnum, valbuf + (bitpos / 8));
 }
      else
 {
   gdb_assert (len == 4);
   gdb_assert (bitpos % 32 == 0 && bitpos >= 0 && bitpos < 128);

   regnum = SPARC_F0_REGNUM + element * 2 + bitpos / 32;
   regcache_cooked_write (regcache, regnum, valbuf + (bitpos / 8));
 }
    }
  else if (sparc64_structure_or_union_p (type))
    {
      int i;

      for (i = 0; i < TYPE_NFIELDS (type); i++)
 {
   struct type *subtype = check_typedef (TYPE_FIELD_TYPE (type, i));
   int subpos = bitpos + TYPE_FIELD_BITPOS (type, i);

   sparc64_store_floating_fields (regcache, subtype, valbuf,
      element, subpos);
 }
      if (TYPE_NFIELDS (type) == 1)
 {
   struct type *subtype = check_typedef (TYPE_FIELD_TYPE (type, 0));

   if (sparc64_floating_p (subtype) && TYPE_LENGTH (subtype) == 4)
     regcache_cooked_write (regcache, SPARC_F1_REGNUM, valbuf);
 }
    }
}
