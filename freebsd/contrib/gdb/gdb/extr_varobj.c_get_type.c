
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {struct type* type; } ;
struct type {int dummy; } ;


 struct type* check_typedef (struct type*) ;

__attribute__((used)) static struct type *
get_type (struct varobj *var)
{
  struct type *type;
  type = var->type;

  if (type != ((void*)0))
    type = check_typedef (type);

  return type;
}
