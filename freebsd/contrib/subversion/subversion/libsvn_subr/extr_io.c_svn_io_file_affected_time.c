
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int mtime; } ;
typedef TYPE_1__ apr_finfo_t ;


 int APR_FINFO_LINK ;
 int APR_FINFO_MIN ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_stat (TYPE_1__*,char const*,int,int *) ;

svn_error_t *
svn_io_file_affected_time(apr_time_t *apr_time,
                          const char *path,
                          apr_pool_t *pool)
{
  apr_finfo_t finfo;

  SVN_ERR(svn_io_stat(&finfo, path, APR_FINFO_MIN | APR_FINFO_LINK, pool));

  *apr_time = finfo.mtime;

  return SVN_NO_ERROR;
}
