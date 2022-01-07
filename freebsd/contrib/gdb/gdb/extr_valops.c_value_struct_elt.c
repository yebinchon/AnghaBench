
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 int COERCE_ARRAY (struct value*) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_FUNC ;
 scalar_t__ TYPE_CODE_MEMBER ;
 scalar_t__ TYPE_CODE_PTR ;
 scalar_t__ TYPE_CODE_REF ;
 scalar_t__ TYPE_CODE_STRUCT ;
 scalar_t__ TYPE_CODE_UNION ;
 int TYPE_FN_FIELDLIST1 (struct type*,int) ;
 scalar_t__ TYPE_NFN_FIELDS (struct type*) ;
 struct type* VALUE_TYPE (struct value*) ;
 struct type* check_typedef (struct type*) ;
 scalar_t__ destructor_name_p (char*,struct type*) ;
 int error (char*,...) ;
 scalar_t__ get_destructor_fn_field (struct type*,int*,int*) ;
 struct value* search_struct_field (char*,struct value*,int ,struct type*,int ) ;
 struct value* search_struct_method (char*,struct value**,struct value**,int ,int*,struct type*) ;
 struct value* value_fn_field (int *,int ,int,int *,int ) ;
 struct value* value_ind (struct value*) ;

struct value *
value_struct_elt (struct value **argp, struct value **args,
    char *name, int *static_memfuncp, char *err)
{
  struct type *t;
  struct value *v;

  COERCE_ARRAY (*argp);

  t = check_typedef (VALUE_TYPE (*argp));



  while (TYPE_CODE (t) == TYPE_CODE_PTR || TYPE_CODE (t) == TYPE_CODE_REF)
    {
      *argp = value_ind (*argp);

      if (TYPE_CODE (VALUE_TYPE (*argp)) != TYPE_CODE_FUNC)
 COERCE_ARRAY (*argp);
      t = check_typedef (VALUE_TYPE (*argp));
    }

  if (TYPE_CODE (t) == TYPE_CODE_MEMBER)
    error ("not implemented: member type in value_struct_elt");

  if (TYPE_CODE (t) != TYPE_CODE_STRUCT
      && TYPE_CODE (t) != TYPE_CODE_UNION)
    error ("Attempt to extract a component of a value that is not a %s.", err);


  if (static_memfuncp)
    *static_memfuncp = 0;

  if (!args)
    {




      v = search_struct_field (name, *argp, 0, t, 0);
      if (v)
 return v;




      if (destructor_name_p (name, t))
 error ("Cannot get value of destructor");

      v = search_struct_method (name, argp, args, 0, static_memfuncp, t);

      if (v == (struct value *) - 1)
 error ("Cannot take address of a method");
      else if (v == 0)
 {
   if (TYPE_NFN_FIELDS (t))
     error ("There is no member or method named %s.", name);
   else
     error ("There is no member named %s.", name);
 }
      return v;
    }

  if (destructor_name_p (name, t))
    {
      if (!args[1])
 {

   int m_index, f_index;

   v = ((void*)0);
   if (get_destructor_fn_field (t, &m_index, &f_index))
     {
       v = value_fn_field (((void*)0), TYPE_FN_FIELDLIST1 (t, m_index),
      f_index, ((void*)0), 0);
     }
   if (v == ((void*)0))
     error ("could not find destructor function named %s.", name);
   else
     return v;
 }
      else
 {
   error ("destructor should not have any argument");
 }
    }
  else
    v = search_struct_method (name, argp, args, 0, static_memfuncp, t);

  if (v == (struct value *) - 1)
    {
      error ("One of the arguments you tried to pass to %s could not be converted to what the function wants.", name);
    }
  else if (v == 0)
    {



      v = search_struct_field (name, *argp, 0, t, 0);
    }

  if (!v)
    error ("Structure has no component named %s.", name);
  return v;
}
