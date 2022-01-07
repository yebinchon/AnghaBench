
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 struct type* TYPE_BASECLASS (struct type*,int) ;
 char* TYPE_FIELD_NAME (struct type*,int) ;
 char* TYPE_FN_FIELDLIST_NAME (struct type*,int) ;
 int TYPE_NFIELDS (struct type*) ;
 int TYPE_NFN_FIELDS (struct type*) ;
 int TYPE_N_BASECLASSES (struct type*) ;
 scalar_t__ destructor_name_p (char const*,struct type*) ;
 int get_destructor_fn_field (struct type*,int*,int*) ;
 scalar_t__ strcmp_iw (char*,char const*) ;

__attribute__((used)) static int
check_field_in (struct type *type, const char *name)
{
  int i;

  for (i = TYPE_NFIELDS (type) - 1; i >= TYPE_N_BASECLASSES (type); i--)
    {
      char *t_field_name = TYPE_FIELD_NAME (type, i);
      if (t_field_name && (strcmp_iw (t_field_name, name) == 0))
 return 1;
    }





  if (destructor_name_p (name, type))
    {
      int m_index, f_index;

      return get_destructor_fn_field (type, &m_index, &f_index);
    }

  for (i = TYPE_NFN_FIELDS (type) - 1; i >= 0; --i)
    {
      if (strcmp_iw (TYPE_FN_FIELDLIST_NAME (type, i), name) == 0)
 return 1;
    }

  for (i = TYPE_N_BASECLASSES (type) - 1; i >= 0; i--)
    if (check_field_in (TYPE_BASECLASS (type, i), name))
      return 1;

  return 0;
}
