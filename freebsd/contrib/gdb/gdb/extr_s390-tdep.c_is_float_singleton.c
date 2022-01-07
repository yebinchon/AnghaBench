
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int CHECK_TYPEDEF (struct type*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_FLT ;
 scalar_t__ TYPE_CODE_STRUCT ;
 struct type* TYPE_FIELD_TYPE (struct type*,int ) ;
 int TYPE_NFIELDS (struct type*) ;

__attribute__((used)) static int
is_float_singleton (struct type *type)
{
  if (TYPE_CODE (type) == TYPE_CODE_STRUCT && TYPE_NFIELDS (type) == 1)
    {
      struct type *singleton_type = TYPE_FIELD_TYPE (type, 0);
      CHECK_TYPEDEF (singleton_type);

      return (TYPE_CODE (singleton_type) == TYPE_CODE_FLT
       || is_float_singleton (singleton_type));
    }

  return 0;
}
