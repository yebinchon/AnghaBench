
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_token_map_t ;
typedef int svn_error_t ;


 int SVN_ERR_BAD_TOKEN ;
 int * SVN_NO_ERROR ;
 int SVN_TOKEN_UNKNOWN ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_token__from_word (int const*,char const*) ;

svn_error_t *
svn_token__from_word_err(int *value,
                         const svn_token_map_t *map,
                         const char *word)
{
  *value = svn_token__from_word(map, word);

  if (*value == SVN_TOKEN_UNKNOWN)
    return svn_error_createf(SVN_ERR_BAD_TOKEN, ((void*)0),
                             _("Token '%s' is unrecognized"),
                             word);

  return SVN_NO_ERROR;
}
