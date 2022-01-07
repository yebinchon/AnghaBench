
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {struct value* value; } ;
struct value {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;


 int TYPE_CODE (struct type*) ;




 int builtin_type_int ;
 int gdb_value_ind (struct value*,struct value**) ;
 int gdb_value_struct_elt (int *,struct value**,struct value**,int *,char*,int *,char*) ;
 int gdb_value_subscript (struct value*,struct value*,struct value**) ;
 struct type* get_target_type (struct type*) ;
 struct type* get_type (struct varobj*) ;
 char* name_of_child (struct varobj*,int) ;
 int release_value (struct value*) ;
 struct value* value_coerce_array (struct value*) ;
 struct value* value_from_longest (int ,int ) ;
 struct value* value_slice (struct value*,int,int) ;
 int xfree (char*) ;

__attribute__((used)) static struct value *
c_value_of_child (struct varobj *parent, int index)
{
  struct value *value;
  struct value *temp;
  struct value *indval;
  struct type *type, *target;
  char *name;

  type = get_type (parent);
  target = get_target_type (type);
  name = name_of_child (parent, index);
  temp = parent->value;
  value = ((void*)0);

  if (temp != ((void*)0))
    {
      switch (TYPE_CODE (type))
 {
 case 131:






   indval = value_from_longest (builtin_type_int, (LONGEST) index);
   gdb_value_subscript (temp, indval, &value);

   break;

 case 129:
 case 128:
   gdb_value_struct_elt (((void*)0), &value, &temp, ((void*)0), name, ((void*)0),
    "vstructure");
   break;

 case 130:
   switch (TYPE_CODE (target))
     {
     case 129:
     case 128:
       gdb_value_struct_elt (((void*)0), &value, &temp, ((void*)0), name, ((void*)0),
        "vstructure");
       break;

     default:
       gdb_value_ind (temp, &value);
       break;
     }
   break;

 default:
   break;
 }
    }

  if (value != ((void*)0))
    release_value (value);

  xfree (name);
  return value;
}
