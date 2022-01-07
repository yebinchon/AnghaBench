
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct pending {int nsyms; struct symbol** symbol; struct pending* next; } ;


 int DEPRECATED_SYMBOL_NAME (struct symbol*) ;
 int LOC_TYPEDEF ;
 int STRUCT_DOMAIN ;
 int SYMBOL_CLASS (struct symbol*) ;
 int SYMBOL_DOMAIN (struct symbol*) ;
 struct type* SYMBOL_TYPE (struct symbol*) ;
 int TYPE_CODE (struct type*) ;



 int TYPE_STUB (struct type*) ;
 char* TYPE_TAG_NAME (struct type*) ;
 int complaint (int *,char*,...) ;
 struct pending* file_symbols ;
 int replace_type (struct type*,struct type*) ;
 int strcmp (int ,char*) ;
 int symfile_complaints ;
 struct type** undef_types ;
 int undef_types_length ;

void
cleanup_undefined_types (void)
{
  struct type **type;

  for (type = undef_types; type < undef_types + undef_types_length; type++)
    {
      switch (TYPE_CODE (*type))
 {

 case 129:
 case 128:
 case 130:
   {




     if (TYPE_STUB (*type))
       {
  struct pending *ppt;
  int i;

  char *typename = TYPE_TAG_NAME (*type);

  if (typename == ((void*)0))
    {
      complaint (&symfile_complaints, "need a type name");
      break;
    }
  for (ppt = file_symbols; ppt; ppt = ppt->next)
    {
      for (i = 0; i < ppt->nsyms; i++)
        {
   struct symbol *sym = ppt->symbol[i];

   if (SYMBOL_CLASS (sym) == LOC_TYPEDEF
       && SYMBOL_DOMAIN (sym) == STRUCT_DOMAIN
       && (TYPE_CODE (SYMBOL_TYPE (sym)) ==
    TYPE_CODE (*type))
       && strcmp (DEPRECATED_SYMBOL_NAME (sym), typename) == 0)
                          replace_type (*type, SYMBOL_TYPE (sym));
        }
    }
       }
   }
   break;

 default:
   {
     complaint (&symfile_complaints,
         "forward-referenced types left unresolved, "
                       "type code %d.",
         TYPE_CODE (*type));
   }
   break;
 }
    }

  undef_types_length = 0;
}
