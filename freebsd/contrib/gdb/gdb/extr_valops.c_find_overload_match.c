
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct fn_field {int type; } ;
struct cleanup {int dummy; } ;
typedef struct symbol* badness_vector ;
typedef enum oload_classification { ____Placeholder_oload_classification } oload_classification ;




 char* SYMBOL_CPLUS_DEMANGLED_NAME (struct symbol*) ;
 scalar_t__ TYPE_CODE (int ) ;
 scalar_t__ TYPE_CODE_PTR ;
 int * TYPE_DOMAIN_TYPE (int ) ;
 scalar_t__ TYPE_FN_FIELD_VIRTUAL_P (struct fn_field*,int) ;
 char* TYPE_NAME (int ) ;
 int TYPE_TARGET_TYPE (int ) ;
 int VALUE_TYPE (struct value*) ;
 int classify_oload_match (struct symbol**,int,int) ;
 char* cp_func_name (char const*) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*,char const*,...) ;
 int find_oload_champ (struct type**,int,int,int,struct fn_field*,struct symbol**,struct symbol***) ;
 int find_oload_champ_namespace (struct type**,int,char*,char const*,struct symbol***,struct symbol***) ;
 int gdb_assert (int ) ;
 struct cleanup* make_cleanup (int ,char*) ;
 int oload_method_static (int,struct fn_field*,int) ;
 struct value* value_addr (struct value*) ;
 struct fn_field* value_find_oload_method_list (struct value**,char*,int ,int*,struct type**,int*) ;
 struct value* value_fn_field (struct value**,struct fn_field*,int,struct type*,int) ;
 struct value* value_virtual_fn_field (struct value**,struct fn_field*,int,struct type*,int) ;
 int warning (char*,char const*,...) ;
 int xfree ;

int
find_overload_match (struct type **arg_types, int nargs, char *name, int method,
       int lax, struct value **objp, struct symbol *fsym,
       struct value **valp, struct symbol **symp, int *staticp)
{
  struct value *obj = (objp ? *objp : ((void*)0));

  int oload_champ;

  struct badness_vector *oload_champ_bv = ((void*)0);

  struct value *temp = obj;
  struct fn_field *fns_ptr = ((void*)0);
  struct symbol **oload_syms = ((void*)0);
  int num_fns = 0;
  struct type *basetype = ((void*)0);
  int boffset;
  int ix;
  int static_offset;
  struct cleanup *old_cleanups = ((void*)0);

  const char *obj_type_name = ((void*)0);
  char *func_name = ((void*)0);
  enum oload_classification match_quality;


  if (method)
    {
      obj_type_name = TYPE_NAME (VALUE_TYPE (obj));


      if ((!obj_type_name || !*obj_type_name) &&
   (TYPE_CODE (VALUE_TYPE (obj)) == TYPE_CODE_PTR))
 obj_type_name = TYPE_NAME (TYPE_TARGET_TYPE (VALUE_TYPE (obj)));

      fns_ptr = value_find_oload_method_list (&temp, name, 0,
           &num_fns,
           &basetype, &boffset);
      if (!fns_ptr || !num_fns)
 error ("Couldn't find method %s%s%s",
        obj_type_name,
        (obj_type_name && *obj_type_name) ? "::" : "",
        name);



      gdb_assert (TYPE_DOMAIN_TYPE (fns_ptr[0].type) != ((void*)0));
      oload_champ = find_oload_champ (arg_types, nargs, method, num_fns,
          fns_ptr, oload_syms, &oload_champ_bv);
    }
  else
    {
      const char *qualified_name = SYMBOL_CPLUS_DEMANGLED_NAME (fsym);
      func_name = cp_func_name (qualified_name);



      if (func_name == ((void*)0))
        {
   *symp = fsym;
          return 0;
        }

      old_cleanups = make_cleanup (xfree, func_name);
      make_cleanup (xfree, oload_syms);
      make_cleanup (xfree, oload_champ_bv);

      oload_champ = find_oload_champ_namespace (arg_types, nargs,
      func_name,
      qualified_name,
      &oload_syms,
      &oload_champ_bv);
    }



  match_quality
    = classify_oload_match (oload_champ_bv, nargs,
       oload_method_static (method, fns_ptr,
       oload_champ));

  if (match_quality == 129)
    {
      if (method)
 error ("Cannot resolve method %s%s%s to any overloaded instance",
        obj_type_name,
        (obj_type_name && *obj_type_name) ? "::" : "",
        name);
      else
 error ("Cannot resolve function %s to any overloaded instance",
        func_name);
    }
  else if (match_quality == 128)
    {
      if (method)
 warning ("Using non-standard conversion to match method %s%s%s to supplied arguments",
   obj_type_name,
   (obj_type_name && *obj_type_name) ? "::" : "",
   name);
      else
 warning ("Using non-standard conversion to match function %s to supplied arguments",
   func_name);
    }

  if (method)
    {
      if (staticp != ((void*)0))
 *staticp = oload_method_static (method, fns_ptr, oload_champ);
      if (TYPE_FN_FIELD_VIRTUAL_P (fns_ptr, oload_champ))
 *valp = value_virtual_fn_field (&temp, fns_ptr, oload_champ, basetype, boffset);
      else
 *valp = value_fn_field (&temp, fns_ptr, oload_champ, basetype, boffset);
    }
  else
    {
      *symp = oload_syms[oload_champ];
    }

  if (objp)
    {
      if (TYPE_CODE (VALUE_TYPE (temp)) != TYPE_CODE_PTR
   && TYPE_CODE (VALUE_TYPE (*objp)) == TYPE_CODE_PTR)
 {
   temp = value_addr (temp);
 }
      *objp = temp;
    }
  if (old_cleanups != ((void*)0))
    do_cleanups (old_cleanups);

  switch (match_quality)
    {
    case 129:
      return 100;
    case 128:
      return 10;
    default:
      return 0;
    }
}
