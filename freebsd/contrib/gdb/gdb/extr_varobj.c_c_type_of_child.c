
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {struct type* type; } ;
struct type {int dummy; } ;


 int TYPE_CODE (struct type*) ;




 struct type* get_target_type (struct type*) ;
 struct type* lookup_struct_elt_type (struct type*,char*,int ) ;
 char* name_of_child (struct varobj*,int) ;
 int warning (char*) ;
 int xfree (char*) ;

__attribute__((used)) static struct type *
c_type_of_child (struct varobj *parent, int index)
{
  struct type *type;
  char *name = name_of_child (parent, index);

  switch (TYPE_CODE (parent->type))
    {
    case 131:
      type = get_target_type (parent->type);
      break;

    case 129:
    case 128:
      type = lookup_struct_elt_type (parent->type, name, 0);
      break;

    case 130:
      switch (TYPE_CODE (get_target_type (parent->type)))
 {
 case 129:
 case 128:
   type = lookup_struct_elt_type (parent->type, name, 0);
   break;

 default:
   type = get_target_type (parent->type);
   break;
 }
      break;

    default:

      warning ("Child of parent whose type does not allow children");

      type = ((void*)0);
      break;
    }

  xfree (name);
  return type;
}
