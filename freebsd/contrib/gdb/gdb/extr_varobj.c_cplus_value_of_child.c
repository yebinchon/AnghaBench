
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {struct value* value; struct varobj* parent; } ;
struct value {int dummy; } ;
struct type {int dummy; } ;


 scalar_t__ CPLUS_FAKE_CHILD (struct varobj*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_CODE_REF ;
 scalar_t__ TYPE_CODE_STRUCT ;
 scalar_t__ TYPE_CODE_UNION ;
 int TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 struct type* VALUE_TYPE (struct value*) ;
 struct value* c_value_of_child (struct varobj*,int) ;
 int gdb_value_ind (struct value*,struct value**) ;
 int gdb_value_struct_elt (int *,struct value**,struct value**,int *,char*,int *,char*) ;
 struct type* get_type_deref (struct varobj*) ;
 char* name_of_child (struct varobj*,int) ;
 int release_value (struct value*) ;
 struct value* value_cast (int ,struct value*) ;
 int xfree (char*) ;

__attribute__((used)) static struct value *
cplus_value_of_child (struct varobj *parent, int index)
{
  struct type *type;
  struct value *value;

  if (CPLUS_FAKE_CHILD (parent))
    type = get_type_deref (parent->parent);
  else
    type = get_type_deref (parent);

  value = ((void*)0);

  if (((TYPE_CODE (type)) == TYPE_CODE_STRUCT) ||
      ((TYPE_CODE (type)) == TYPE_CODE_UNION))
    {
      if (CPLUS_FAKE_CHILD (parent))
 {
   char *name;
   struct value *temp = parent->parent->value;

   if (temp == ((void*)0))
     return ((void*)0);

   name = name_of_child (parent, index);
   gdb_value_struct_elt (((void*)0), &value, &temp, ((void*)0), name, ((void*)0),
    "cplus_structure");
   if (value != ((void*)0))
     release_value (value);

   xfree (name);
 }
      else if (index >= TYPE_N_BASECLASSES (type))
 {

   return ((void*)0);
 }
      else
 {

   if (parent->value != ((void*)0))
     {
       struct value *temp = ((void*)0);

       if (TYPE_CODE (VALUE_TYPE (parent->value)) == TYPE_CODE_PTR
    || TYPE_CODE (VALUE_TYPE (parent->value)) == TYPE_CODE_REF)
  {
    if (!gdb_value_ind (parent->value, &temp))
      return ((void*)0);
  }
       else
  temp = parent->value;

       if (temp != ((void*)0))
  {
    value = value_cast (TYPE_FIELD_TYPE (type, index), temp);
    release_value (value);
  }
       else
  {


    return ((void*)0);
  }
     }
 }
    }

  if (value == ((void*)0))
    return c_value_of_child (parent, index);

  return value;
}
