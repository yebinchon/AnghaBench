
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct fn_field {int dummy; } ;


 scalar_t__ BASETYPE_VIA_VIRTUAL (struct type*,int) ;
 int CHECK_TYPEDEF (struct type*) ;
 int DMGL_ANSI ;
 struct type* TYPE_BASECLASS (struct type*,int) ;
 int TYPE_BASECLASS_BITPOS (struct type*,int) ;
 struct fn_field* TYPE_FN_FIELDLIST1 (struct type*,int) ;
 int TYPE_FN_FIELDLIST_LENGTH (struct type*,int) ;
 char* TYPE_FN_FIELDLIST_NAME (struct type*,int) ;
 int TYPE_FN_FIELD_ARGS (struct fn_field*,int) ;
 scalar_t__ TYPE_FN_FIELD_STATIC_P (struct fn_field*,int) ;
 int TYPE_FN_FIELD_TYPE (struct fn_field*,int) ;
 scalar_t__ TYPE_FN_FIELD_VIRTUAL_P (struct fn_field*,int) ;
 scalar_t__ TYPE_HAS_VTABLE (struct type*) ;
 int TYPE_LENGTH (struct type*) ;
 int TYPE_NFIELDS (int ) ;
 int TYPE_NFN_FIELDS (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 int TYPE_VARARGS (int ) ;
 scalar_t__ VALUE_ADDRESS (struct value*) ;
 char* VALUE_CONTENTS (struct value*) ;
 int VALUE_CONTENTS_ALL (struct value*) ;
 scalar_t__ VALUE_EMBEDDED_OFFSET (struct value*) ;
 scalar_t__ VALUE_OFFSET (struct value*) ;
 scalar_t__ alloca (int) ;
 int baseclass_offset (struct type*,int,char*,scalar_t__) ;
 int check_stub_method_group (struct type*,int) ;
 struct type* check_typedef (struct type*) ;
 scalar_t__ cplus_demangle_opname (char*,char*,int ) ;
 int error (char*,...) ;
 int find_rt_vbase_offset (struct type*,struct type*,int ,scalar_t__,int*,int*) ;
 scalar_t__ strcmp_iw (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ target_read_memory (scalar_t__,char*,int) ;
 int typecmp (scalar_t__,int ,int ,int ,struct value**) ;
 struct value* value_fn_field (struct value**,struct fn_field*,int,struct type*,int) ;
 struct value* value_virtual_fn_field (struct value**,struct fn_field*,int,struct type*,int) ;

__attribute__((used)) static struct value *
search_struct_method (char *name, struct value **arg1p,
        struct value **args, int offset,
        int *static_memfuncp, struct type *type)
{
  int i;
  struct value *v;
  int name_matched = 0;
  char dem_opname[64];

  CHECK_TYPEDEF (type);
  for (i = TYPE_NFN_FIELDS (type) - 1; i >= 0; i--)
    {
      char *t_field_name = TYPE_FN_FIELDLIST_NAME (type, i);

      if (strncmp (t_field_name, "__", 2) == 0 ||
   strncmp (t_field_name, "op", 2) == 0 ||
   strncmp (t_field_name, "type", 4) == 0)
 {
   if (cplus_demangle_opname (t_field_name, dem_opname, DMGL_ANSI))
     t_field_name = dem_opname;
   else if (cplus_demangle_opname (t_field_name, dem_opname, 0))
     t_field_name = dem_opname;
 }
      if (t_field_name && (strcmp_iw (t_field_name, name) == 0))
 {
   int j = TYPE_FN_FIELDLIST_LENGTH (type, i) - 1;
   struct fn_field *f = TYPE_FN_FIELDLIST1 (type, i);
   name_matched = 1;

   check_stub_method_group (type, i);
   if (j > 0 && args == 0)
     error ("cannot resolve overloaded method `%s': no arguments supplied", name);
   else if (j == 0 && args == 0)
     {
       v = value_fn_field (arg1p, f, j, type, offset);
       if (v != ((void*)0))
  return v;
     }
   else
     while (j >= 0)
       {
  if (!typecmp (TYPE_FN_FIELD_STATIC_P (f, j),
         TYPE_VARARGS (TYPE_FN_FIELD_TYPE (f, j)),
         TYPE_NFIELDS (TYPE_FN_FIELD_TYPE (f, j)),
         TYPE_FN_FIELD_ARGS (f, j), args))
    {
      if (TYPE_FN_FIELD_VIRTUAL_P (f, j))
        return value_virtual_fn_field (arg1p, f, j, type, offset);
      if (TYPE_FN_FIELD_STATIC_P (f, j) && static_memfuncp)
        *static_memfuncp = 1;
      v = value_fn_field (arg1p, f, j, type, offset);
      if (v != ((void*)0))
        return v;
    }
  j--;
       }
 }
    }

  for (i = TYPE_N_BASECLASSES (type) - 1; i >= 0; i--)
    {
      int base_offset;

      if (BASETYPE_VIA_VIRTUAL (type, i))
 {
   if (TYPE_HAS_VTABLE (type))
     {


       int skip;
       find_rt_vbase_offset (type, TYPE_BASECLASS (type, i),
        VALUE_CONTENTS_ALL (*arg1p),
        offset + VALUE_EMBEDDED_OFFSET (*arg1p),
        &base_offset, &skip);
       if (skip >= 0)
  error ("Virtual base class offset not found in vtable");
     }
   else
     {
       struct type *baseclass = check_typedef (TYPE_BASECLASS (type, i));
       char *base_valaddr;





       if (offset < 0 || offset >= TYPE_LENGTH (type))
  {
    base_valaddr = (char *) alloca (TYPE_LENGTH (baseclass));
    if (target_read_memory (VALUE_ADDRESS (*arg1p)
       + VALUE_OFFSET (*arg1p) + offset,
       base_valaddr,
       TYPE_LENGTH (baseclass)) != 0)
      error ("virtual baseclass botch");
  }
       else
  base_valaddr = VALUE_CONTENTS (*arg1p) + offset;

       base_offset =
  baseclass_offset (type, i, base_valaddr,
      VALUE_ADDRESS (*arg1p)
      + VALUE_OFFSET (*arg1p) + offset);
       if (base_offset == -1)
  error ("virtual baseclass botch");
     }
 }
      else
 {
   base_offset = TYPE_BASECLASS_BITPOS (type, i) / 8;
 }
      v = search_struct_method (name, arg1p, args, base_offset + offset,
    static_memfuncp, TYPE_BASECLASS (type, i));
      if (v == (struct value *) - 1)
 {
   name_matched = 1;
 }
      else if (v)
 {


   return v;
 }
    }
  if (name_matched)
    return (struct value *) - 1;
  else
    return ((void*)0);
}
