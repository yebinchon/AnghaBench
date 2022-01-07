
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_CODE (struct type const*) ;

 int TYPE_LENGTH (struct type const*) ;
 int gdb_assert (int) ;

__attribute__((used)) static int
sparc64_floating_p (const struct type *type)
{
  switch (TYPE_CODE (type))
    {
    case 128:
      {
 int len = TYPE_LENGTH (type);
 gdb_assert (len == 4 || len == 8 || len == 16);
      }
      return 1;
    default:
      break;
    }

  return 0;
}
