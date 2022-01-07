
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_tristate_t ;
typedef int svn_boolean_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int TRUE ;
 char* svn_hash__get_cstring (int *,char const*,int *) ;
 scalar_t__ svn_tristate__from_word (char const*) ;
 scalar_t__ svn_tristate_false ;
 scalar_t__ svn_tristate_true ;

svn_boolean_t
svn_hash__get_bool(apr_hash_t *hash, const char *key,
                   svn_boolean_t default_value)
{
  const char *tmp_value = svn_hash__get_cstring(hash, key, ((void*)0));
  svn_tristate_t value = svn_tristate__from_word(tmp_value);

  if (value == svn_tristate_true)
    return TRUE;
  else if (value == svn_tristate_false)
    return FALSE;

  return default_value;
}
