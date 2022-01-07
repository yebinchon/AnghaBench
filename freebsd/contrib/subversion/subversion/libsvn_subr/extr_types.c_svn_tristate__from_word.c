
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_tristate_t ;


 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ svn_cstring_casecmp (char const*,char*) ;
 int svn_tristate_false ;
 int svn_tristate_true ;
 int svn_tristate_unknown ;

svn_tristate_t
svn_tristate__from_word(const char *word)
{
  if (word == ((void*)0))
    return svn_tristate_unknown;
  else if (0 == svn_cstring_casecmp(word, "true")
           || 0 == svn_cstring_casecmp(word, "yes")
           || 0 == svn_cstring_casecmp(word, "on")
           || 0 == strcmp(word, "1"))
    return svn_tristate_true;
  else if (0 == svn_cstring_casecmp(word, "false")
           || 0 == svn_cstring_casecmp(word, "no")
           || 0 == svn_cstring_casecmp(word, "off")
           || 0 == strcmp(word, "0"))
    return svn_tristate_false;

  return svn_tristate_unknown;
}
