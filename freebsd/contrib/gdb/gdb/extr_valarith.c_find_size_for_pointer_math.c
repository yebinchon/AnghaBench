
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int LONGEST ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_VOID ;
 int TYPE_LENGTH (struct type*) ;
 char* TYPE_NAME (struct type*) ;
 char* TYPE_TAG_NAME (struct type*) ;
 int TYPE_TARGET_TYPE (struct type*) ;
 struct type* check_typedef (int ) ;
 int error (char*,...) ;

__attribute__((used)) static LONGEST
find_size_for_pointer_math (struct type *ptr_type)
{
  LONGEST sz = -1;
  struct type *ptr_target;

  ptr_target = check_typedef (TYPE_TARGET_TYPE (ptr_type));

  sz = TYPE_LENGTH (ptr_target);
  if (sz == 0)
    {
      if (TYPE_CODE (ptr_type) == TYPE_CODE_VOID)
 sz = 1;
      else
 {
   char *name;

   name = TYPE_NAME (ptr_target);
   if (name == ((void*)0))
     name = TYPE_TAG_NAME (ptr_target);
   if (name == ((void*)0))
     error ("Cannot perform pointer math on incomplete types, "
     "try casting to a known type, or void *.");
   else
     error ("Cannot perform pointer math on incomplete type \"%s\", "
     "try casting to a known type, or void *.", name);
 }
    }
  return sz;
}
