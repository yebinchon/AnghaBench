
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_MERGEINFO_PARSE_ERROR ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_pstrndup (int *,char const*,int) ;
 int * svn_error_create (int ,int *,int ) ;
 char* svn_fspath__canonicalize (int ,int *) ;

__attribute__((used)) static svn_error_t *
parse_pathname(const char **input,
               const char *end,
               const char **pathname,
               apr_pool_t *pool)
{
  const char *curr = *input;
  const char *last_colon = ((void*)0);




  while (curr < end && *curr != '\n')
    {
      if (*curr == ':')
        last_colon = curr;
      curr++;
    }

  if (!last_colon)
    return svn_error_create(SVN_ERR_MERGEINFO_PARSE_ERROR, ((void*)0),
                            _("Pathname not terminated by ':'"));



  *pathname = svn_fspath__canonicalize(apr_pstrndup(pool, *input,
                                                    last_colon - *input),
                                       pool);

  *input = last_colon;

  return SVN_NO_ERROR;
}
