
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int dummy; } ;
struct type {int dummy; } ;


 int BOUND_CANNOT_BE_DETERMINED ;
 int TYPE_ARRAY_UPPER_BOUND_TYPE (struct type*) ;
 int TYPE_CODE (struct type*) ;






 int TYPE_LENGTH (struct type*) ;
 int TYPE_NFIELDS (struct type*) ;
 struct type* get_target_type (struct type*) ;
 struct type* get_type (struct varobj*) ;

__attribute__((used)) static int
c_number_of_children (struct varobj *var)
{
  struct type *type;
  struct type *target;
  int children;

  type = get_type (var);
  target = get_target_type (type);
  children = 0;

  switch (TYPE_CODE (type))
    {
    case 133:
      if (TYPE_LENGTH (type) > 0 && TYPE_LENGTH (target) > 0
   && TYPE_ARRAY_UPPER_BOUND_TYPE (type) != BOUND_CANNOT_BE_DETERMINED)
 children = TYPE_LENGTH (type) / TYPE_LENGTH (target);
      else
 children = -1;
      break;

    case 130:
    case 129:
      children = TYPE_NFIELDS (type);
      break;

    case 131:
      switch (TYPE_CODE (target))
 {
 case 130:
 case 129:
   children = TYPE_NFIELDS (target);
   break;

 case 132:
 case 128:
   children = 0;
   break;

 default:
   children = 1;
 }
      break;

    default:

      break;
    }

  return children;
}
