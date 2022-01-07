
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int apr_hash_t ;


 TYPE_1__* svn_hash_gets (int *,char const*) ;

const char *
svn_prop_get_value(const apr_hash_t *props,
                   const char *prop_name)
{
  svn_string_t *str;

  if (!props)
    return ((void*)0);

  str = svn_hash_gets((apr_hash_t *)props, prop_name);

  if (str)
    return str->data;

  return ((void*)0);
}
