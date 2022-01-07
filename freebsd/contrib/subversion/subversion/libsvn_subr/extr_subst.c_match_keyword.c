
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int * svn_hash_gets (int *,char*) ;

__attribute__((used)) static svn_boolean_t
match_keyword(char *buf,
              apr_size_t len,
              char *keyword_name,
              apr_hash_t *keywords)
{
  apr_size_t i;


  if (! keywords)
    return FALSE;


  for (i = 0; i < len - 2 && buf[i + 1] != ':'; i++)
    keyword_name[i] = buf[i + 1];
  keyword_name[i] = '\0';

  return svn_hash_gets(keywords, keyword_name) != ((void*)0);
}
