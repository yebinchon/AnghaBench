
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_token_map_t ;


 int SVN_ERR_MALFUNCTION_NO_RETURN () ;
 int SVN_TOKEN_UNKNOWN ;
 int svn_token__from_word (int const*,char const*) ;

int
svn_token__from_word_strict(const svn_token_map_t *map,
                            const char *word)
{
  int value = svn_token__from_word(map, word);

  if (value == SVN_TOKEN_UNKNOWN)
    SVN_ERR_MALFUNCTION_NO_RETURN();

  return value;
}
