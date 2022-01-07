
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int SVN_KEYWORD_MAX_LEN ;
 int assert (int) ;
 int strlen (char const*) ;
 int * svn_hash_gets (int *,char const*) ;
 scalar_t__ translate_keyword_subst (char*,int*,char const*,int ,int const*) ;

__attribute__((used)) static svn_boolean_t
translate_keyword(char *buf,
                  apr_size_t *len,
                  const char *keyword_name,
                  svn_boolean_t expand,
                  apr_hash_t *keywords)
{
  const svn_string_t *value;


  assert(*len <= SVN_KEYWORD_MAX_LEN);
  assert((buf[0] == '$') && (buf[*len - 1] == '$'));


  if (! keywords)
    return FALSE;

  value = svn_hash_gets(keywords, keyword_name);

  if (value)
    {
      return translate_keyword_subst(buf, len,
                                     keyword_name, strlen(keyword_name),
                                     expand ? value : ((void*)0));
    }

  return FALSE;
}
