
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache {int dummy; } ;


 scalar_t__ SPARC_F0_REGNUM ;
 scalar_t__ SPARC_O0_REGNUM ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_UNION ;
 int TYPE_LENGTH (struct type*) ;
 int gdb_assert (int) ;
 int memcpy (void*,char*,int) ;
 int regcache_cooked_read (struct regcache*,scalar_t__,char*) ;
 int sparc64_extract_floating_fields (struct regcache*,struct type*,char*,int ) ;
 scalar_t__ sparc64_floating_p (struct type*) ;
 int sparc64_integral_or_pointer_p (struct type*) ;
 scalar_t__ sparc64_structure_or_union_p (struct type*) ;

__attribute__((used)) static void
sparc64_extract_return_value (struct type *type, struct regcache *regcache,
         void *valbuf)
{
  int len = TYPE_LENGTH (type);
  char buf[32];
  int i;

  if (sparc64_structure_or_union_p (type))
    {

      gdb_assert (len <= 32);

      for (i = 0; i < ((len + 7) / 8); i++)
 regcache_cooked_read (regcache, SPARC_O0_REGNUM + i, buf + i * 8);
      if (TYPE_CODE (type) != TYPE_CODE_UNION)
 sparc64_extract_floating_fields (regcache, type, buf, 0);
      memcpy (valbuf, buf, len);
    }
  else if (sparc64_floating_p (type))
    {

      for (i = 0; i < len / 4; i++)
 regcache_cooked_read (regcache, SPARC_F0_REGNUM + i, buf + i * 4);
      memcpy (valbuf, buf, len);
    }
  else
    {

      gdb_assert (sparc64_integral_or_pointer_p (type));



      regcache_cooked_read (regcache, SPARC_O0_REGNUM, buf);
      memcpy (valbuf, buf + 8 - len, len);
    }
}
