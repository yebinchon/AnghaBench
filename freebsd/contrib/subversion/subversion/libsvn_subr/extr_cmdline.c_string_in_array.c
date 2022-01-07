
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* most_similar (char const*,char const**,size_t,int *) ;
 int strcmp (char const*,char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*,...) ;

__attribute__((used)) static svn_error_t *
string_in_array(const char *needle,
                const char **haystack,
                apr_size_t haystack_len,
                apr_pool_t *scratch_pool)
{
  const char *next_of_kin;
  apr_size_t i;
  for (i = 0; i < haystack_len; i++)
    {
      if (!strcmp(needle, haystack[i]))
        return SVN_NO_ERROR;
    }


  next_of_kin = most_similar(needle, haystack, haystack_len, scratch_pool);
  if (next_of_kin)
    return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                             _("Ignoring unknown value '%s'; "
                               "did you mean '%s'?"),
                             needle, next_of_kin);
  else
    return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                             _("Ignoring unknown value '%s'"),
                             needle);
}
