
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
typedef enum noside { ____Placeholder_noside } noside ;


 char* TYPE_TAG_NAME (struct type const*) ;
 int error (char*,char*,char*) ;
 struct value* value_maybe_namespace_elt (struct type const*,char*,int) ;

__attribute__((used)) static struct value *
value_namespace_elt (const struct type *curtype,
       char *name,
       enum noside noside)
{
  struct value *retval = value_maybe_namespace_elt (curtype, name,
          noside);

  if (retval == ((void*)0))
    error ("No symbol \"%s\" in namespace \"%s\".", name,
    TYPE_TAG_NAME (curtype));

  return retval;
}
