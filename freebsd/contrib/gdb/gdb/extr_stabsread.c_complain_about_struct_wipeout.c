
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int TYPE_CODE (struct type*) ;



 char* TYPE_NAME (struct type*) ;
 char* TYPE_TAG_NAME (struct type*) ;
 int complaint (int *,char*,char*,char*) ;
 int symfile_complaints ;

__attribute__((used)) static void
complain_about_struct_wipeout (struct type *type)
{
  char *name = "";
  char *kind = "";

  if (TYPE_TAG_NAME (type))
    {
      name = TYPE_TAG_NAME (type);
      switch (TYPE_CODE (type))
        {
        case 129: kind = "struct "; break;
        case 128: kind = "union "; break;
        case 130: kind = "enum "; break;
        default: kind = "";
        }
    }
  else if (TYPE_NAME (type))
    {
      name = TYPE_NAME (type);
      kind = "";
    }
  else
    {
      name = "<unknown>";
      kind = "";
    }

  complaint (&symfile_complaints,
      "struct/union type gets multiply defined: %s%s", kind, name);
}
