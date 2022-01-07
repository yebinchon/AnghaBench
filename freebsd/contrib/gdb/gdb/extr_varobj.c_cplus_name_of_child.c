
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int name; struct varobj* parent; } ;
struct type {int dummy; } ;


 scalar_t__ CPLUS_FAKE_CHILD (struct varobj*) ;
 int TYPE_CODE (struct type*) ;


 char* TYPE_FIELD_NAME (struct type*,int) ;
 int TYPE_FIELD_PRIVATE (struct type*,int) ;
 int TYPE_FIELD_PROTECTED (struct type*,int) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 struct type* TYPE_VPTR_BASETYPE (struct type*) ;
 int TYPE_VPTR_FIELDNO (struct type*) ;
 char* c_name_of_child (struct varobj*,int) ;
 int cplus_class_num_children (struct type*,int*) ;
 struct type* get_type_deref (struct varobj*) ;
 char* savestring (char*,int ) ;
 int strcmp (int ,char*) ;
 int strlen (char*) ;
 size_t v_private ;
 size_t v_public ;

__attribute__((used)) static char *
cplus_name_of_child (struct varobj *parent, int index)
{
  char *name;
  struct type *type;

  if (CPLUS_FAKE_CHILD (parent))
    {

      type = get_type_deref (parent->parent);
    }
  else
    type = get_type_deref (parent);

  name = ((void*)0);
  switch (TYPE_CODE (type))
    {
    case 129:
    case 128:
      if (CPLUS_FAKE_CHILD (parent))
 {






   int type_index = TYPE_N_BASECLASSES (type);
   if (strcmp (parent->name, "private") == 0)
     {
       while (index >= 0)
  {
      if (TYPE_VPTR_BASETYPE (type) == type
              && type_index == TYPE_VPTR_FIELDNO (type))
      ;
    else if (TYPE_FIELD_PRIVATE (type, type_index))
      --index;
    ++type_index;
  }
       --type_index;
     }
   else if (strcmp (parent->name, "protected") == 0)
     {
       while (index >= 0)
  {
      if (TYPE_VPTR_BASETYPE (type) == type
              && type_index == TYPE_VPTR_FIELDNO (type))
      ;
    else if (TYPE_FIELD_PROTECTED (type, type_index))
      --index;
    ++type_index;
  }
       --type_index;
     }
   else
     {
       while (index >= 0)
  {
      if (TYPE_VPTR_BASETYPE (type) == type
              && type_index == TYPE_VPTR_FIELDNO (type))
      ;
    else if (!TYPE_FIELD_PRIVATE (type, type_index) &&
        !TYPE_FIELD_PROTECTED (type, type_index))
      --index;
    ++type_index;
  }
       --type_index;
     }

   name = TYPE_FIELD_NAME (type, type_index);
 }
      else if (index < TYPE_N_BASECLASSES (type))

 name = TYPE_FIELD_NAME (type, index);
      else
 {
   int children[3];
   cplus_class_num_children(type, children);






   index -= TYPE_N_BASECLASSES (type);
   switch (index)
     {
     case 0:
       if (children[v_public] > 0)
   name = "public";
       else if (children[v_private] > 0)
   name = "private";
       else
   name = "protected";
       break;
     case 1:
       if (children[v_public] > 0)
  {
    if (children[v_private] > 0)
      name = "private";
    else
      name = "protected";
  }
       else if (children[v_private] > 0)
   name = "protected";
       break;
     case 2:

       name = "protected";
       break;
     default:

       break;
     }
 }
      break;

    default:
      break;
    }

  if (name == ((void*)0))
    return c_name_of_child (parent, index);
  else
    {
      if (name != ((void*)0))
 name = savestring (name, strlen (name));
    }

  return name;
}
