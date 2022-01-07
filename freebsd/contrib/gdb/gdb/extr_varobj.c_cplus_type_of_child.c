
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {struct varobj* parent; } ;
struct type {int dummy; } ;


 scalar_t__ CPLUS_FAKE_CHILD (struct varobj*) ;
 int TYPE_CODE (struct type*) ;


 struct type* TYPE_FIELD_TYPE (struct type*,int) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 struct type* c_type_of_child (struct varobj*,int) ;
 char* cplus_name_of_child (struct varobj*,int) ;
 struct type* get_type_deref (struct varobj*) ;
 struct type* lookup_struct_elt_type (struct type*,char*,int ) ;
 int xfree (char*) ;

__attribute__((used)) static struct type *
cplus_type_of_child (struct varobj *parent, int index)
{
  struct type *type, *t;

  if (CPLUS_FAKE_CHILD (parent))
    {

      t = get_type_deref (parent->parent);
    }
  else
    t = get_type_deref (parent);

  type = ((void*)0);
  switch (TYPE_CODE (t))
    {
    case 129:
    case 128:
      if (CPLUS_FAKE_CHILD (parent))
 {
   char *name = cplus_name_of_child (parent, index);
   type = lookup_struct_elt_type (t, name, 0);
   xfree (name);
 }
      else if (index < TYPE_N_BASECLASSES (t))
 type = TYPE_FIELD_TYPE (t, index);
      else
 {

   return ((void*)0);
 }
      break;

    default:
      break;
    }

  if (type == ((void*)0))
    return c_type_of_child (parent, index);

  return type;
}
