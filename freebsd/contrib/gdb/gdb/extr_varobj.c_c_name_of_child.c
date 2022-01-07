
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varobj {int name; } ;
struct type {int dummy; } ;


 int TYPE_CODE (struct type*) ;




 char* TYPE_FIELD_NAME (struct type*,int) ;
 struct type* get_target_type (struct type*) ;
 struct type* get_type (struct varobj*) ;
 char* savestring (char*,int ) ;
 int strlen (char*) ;
 int xasprintf (char**,char*,int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
c_name_of_child (struct varobj *parent, int index)
{
  struct type *type;
  struct type *target;
  char *name;
  char *string;

  type = get_type (parent);
  target = get_target_type (type);

  switch (TYPE_CODE (type))
    {
    case 131:
      xasprintf (&name, "%d", index);
      break;

    case 129:
    case 128:
      string = TYPE_FIELD_NAME (type, index);
      name = savestring (string, strlen (string));
      break;

    case 130:
      switch (TYPE_CODE (target))
 {
 case 129:
 case 128:
   string = TYPE_FIELD_NAME (target, index);
   name = savestring (string, strlen (string));
   break;

 default:
   xasprintf (&name, "*%s", parent->name);
   break;
 }
      break;

    default:

      name = xstrdup ("???");
    }

  return name;
}
