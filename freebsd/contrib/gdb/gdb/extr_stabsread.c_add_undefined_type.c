
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 struct type** undef_types ;
 int undef_types_allocated ;
 int undef_types_length ;
 scalar_t__ xrealloc (char*,int) ;

__attribute__((used)) static void
add_undefined_type (struct type *type)
{
  if (undef_types_length == undef_types_allocated)
    {
      undef_types_allocated *= 2;
      undef_types = (struct type **)
 xrealloc ((char *) undef_types,
    undef_types_allocated * sizeof (struct type *));
    }
  undef_types[undef_types_length++] = type;
}
