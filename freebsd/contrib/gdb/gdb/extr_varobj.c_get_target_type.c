
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 struct type* TYPE_TARGET_TYPE (struct type*) ;
 struct type* check_typedef (struct type*) ;

__attribute__((used)) static struct type *
get_target_type (struct type *type)
{
  if (type != ((void*)0))
    {
      type = TYPE_TARGET_TYPE (type);
      if (type != ((void*)0))
 type = check_typedef (type);
    }

  return type;
}
