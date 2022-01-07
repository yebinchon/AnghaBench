
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {scalar_t__ size; } ;
typedef TYPE_1__ apr_finfo_t ;


 int APR_FINFO_MIN ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ apr_stat (TYPE_1__*,char const*,int ,int *) ;
 int cstring_from_utf8 (char const**,char const*,int *) ;

svn_error_t *
svn_io_filesizes_different_p(svn_boolean_t *different_p,
                             const char *file1,
                             const char *file2,
                             apr_pool_t *pool)
{
  apr_finfo_t finfo1;
  apr_finfo_t finfo2;
  apr_status_t status;
  const char *file1_apr, *file2_apr;




  SVN_ERR(cstring_from_utf8(&file1_apr, file1, pool));
  SVN_ERR(cstring_from_utf8(&file2_apr, file2, pool));


  status = apr_stat(&finfo1, file1_apr, APR_FINFO_MIN, pool);
  if (status)
    {




      *different_p = FALSE;
      return SVN_NO_ERROR;
    }

  status = apr_stat(&finfo2, file2_apr, APR_FINFO_MIN, pool);
  if (status)
    {

      *different_p = FALSE;
      return SVN_NO_ERROR;
    }


  if (finfo1.size == finfo2.size)
    *different_p = FALSE;
  else
    *different_p = TRUE;

  return SVN_NO_ERROR;
}
