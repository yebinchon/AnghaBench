
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
struct type {int dummy; } ;


 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_CODE_REF ;
 struct type* get_target_type (struct type*) ;
 struct type* get_type (struct varobj*) ;

__attribute__((used)) static struct type *
get_type_deref (struct varobj *var)
{
  struct type *type;

  type = get_type (var);

  if (type != ((void*)0) && (TYPE_CODE (type) == TYPE_CODE_PTR
         || TYPE_CODE (type) == TYPE_CODE_REF))
    type = get_target_type (type);

  return type;
}
