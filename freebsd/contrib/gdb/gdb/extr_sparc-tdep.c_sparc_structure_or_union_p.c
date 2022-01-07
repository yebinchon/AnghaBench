
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_CODE (struct type const*) ;



__attribute__((used)) static int
sparc_structure_or_union_p (const struct type *type)
{
  switch (TYPE_CODE (type))
    {
    case 129:
    case 128:
      return 1;
    default:
      break;
    }

  return 0;
}
