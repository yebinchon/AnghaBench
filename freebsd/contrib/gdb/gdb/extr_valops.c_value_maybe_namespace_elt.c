
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
typedef enum noside { ____Placeholder_noside } noside ;


 int EVAL_AVOID_SIDE_EFFECTS ;
 scalar_t__ LOC_TYPEDEF ;
 scalar_t__ SYMBOL_CLASS (struct symbol*) ;
 int SYMBOL_TYPE (struct symbol*) ;
 char* TYPE_TAG_NAME (struct type const*) ;
 int VAR_DOMAIN ;
 struct value* allocate_value (int ) ;
 struct symbol* cp_lookup_symbol_namespace (char const*,char*,int *,int ,int ,int *) ;
 int get_selected_block (int ) ;
 struct value* value_of_variable (struct symbol*,int ) ;

__attribute__((used)) static struct value *
value_maybe_namespace_elt (const struct type *curtype,
      char *name,
      enum noside noside)
{
  const char *namespace_name = TYPE_TAG_NAME (curtype);
  struct symbol *sym;

  sym = cp_lookup_symbol_namespace (namespace_name, name, ((void*)0),
        get_selected_block (0), VAR_DOMAIN,
        ((void*)0));

  if (sym == ((void*)0))
    return ((void*)0);
  else if ((noside == EVAL_AVOID_SIDE_EFFECTS)
    && (SYMBOL_CLASS (sym) == LOC_TYPEDEF))
    return allocate_value (SYMBOL_TYPE (sym));
  else
    return value_of_variable (sym, get_selected_block (0));
}
