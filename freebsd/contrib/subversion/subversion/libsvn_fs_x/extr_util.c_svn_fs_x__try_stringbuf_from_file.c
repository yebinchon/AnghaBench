
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_8__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 scalar_t__ APR_TO_OS_ERROR (int ) ;
 scalar_t__ EIO ;
 scalar_t__ ESTALE ;
 int FALSE ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_stringbuf_from_file2 (int **,char const*,int *) ;

svn_error_t *
svn_fs_x__try_stringbuf_from_file(svn_stringbuf_t **content,
                                  svn_boolean_t *missing,
                                  const char *path,
                                  svn_boolean_t last_attempt,
                                  apr_pool_t *result_pool)
{
  svn_error_t *err = svn_stringbuf_from_file2(content, path, result_pool);
  if (missing)
    *missing = FALSE;

  if (err)
    {
      *content = ((void*)0);

      if (APR_STATUS_IS_ENOENT(err->apr_err))
        {
          if (!last_attempt)
            {
              svn_error_clear(err);
              if (missing)
                *missing = TRUE;
              return SVN_NO_ERROR;
            }
        }
    }

  return svn_error_trace(err);
}
