
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_LENGTH (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;
 struct type* check_typedef (int ) ;
 scalar_t__ sparc64_floating_p (struct type*) ;
 scalar_t__ sparc64_structure_or_union_p (struct type*) ;

__attribute__((used)) static int
sparc64_16_byte_align_p (struct type *type)
{
  if (sparc64_floating_p (type) && TYPE_LENGTH (type) == 16)
    return 1;

  if (sparc64_structure_or_union_p (type))
    {
      int i;

      for (i = 0; i < TYPE_NFIELDS (type); i++)
 {
   struct type *subtype = check_typedef (TYPE_FIELD_TYPE (type, i));

   if (sparc64_16_byte_align_p (subtype))
     return 1;
 }
    }

  return 0;
}
