
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef int svn_wc__db_status_t ;
typedef int svn_node_kind_t ;
struct TYPE_7__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_depth_t ;
typedef int apr_pool_t ;


 int SVN_ERR (TYPE_1__*) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int svn_depth_unknown ;
 int svn_error_clear (TYPE_1__*) ;
 int svn_node_unknown ;
 TYPE_1__* svn_wc__db_base_get_info (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_status_normal ;

__attribute__((used)) static svn_error_t *
ambient_read_info(svn_wc__db_status_t *status,
                  svn_node_kind_t *kind,
                  svn_depth_t *depth,
                  svn_wc__db_t *db,
                  const char *local_abspath,
                  apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  SVN_ERR_ASSERT(kind != ((void*)0));

  err = svn_wc__db_base_get_info(status, kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), depth, ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 db, local_abspath,
                                 scratch_pool, scratch_pool);

  if (err && err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
    {
      svn_error_clear(err);

      *kind = svn_node_unknown;
      if (status)
        *status = svn_wc__db_status_normal;
      if (depth)
        *depth = svn_depth_unknown;

      return SVN_NO_ERROR;
    }
  else
    SVN_ERR(err);

  return SVN_NO_ERROR;
}
