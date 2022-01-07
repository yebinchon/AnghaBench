
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 char* apr_pstrmemdup (int *,char const*,int) ;
 int strlen (char const*) ;

svn_error_t *
svn_opt__split_arg_at_peg_revision(const char **true_target,
                                   const char **peg_revision,
                                   const char *utf8_target,
                                   apr_pool_t *pool)
{
  const char *peg_start = ((void*)0);
  const char *ptr;

  for (ptr = (utf8_target + strlen(utf8_target) - 1); ptr >= utf8_target;
        --ptr)
    {


      if (*ptr == '/')
        break;

      if (*ptr == '@')
        {
          peg_start = ptr;
          break;
        }
    }

  if (peg_start)
    {
      *true_target = apr_pstrmemdup(pool, utf8_target, ptr - utf8_target);
      if (peg_revision)
        *peg_revision = apr_pstrdup(pool, peg_start);
    }
  else
    {
      *true_target = utf8_target;
      if (peg_revision)
        *peg_revision = "";
    }

  return SVN_NO_ERROR;
}
