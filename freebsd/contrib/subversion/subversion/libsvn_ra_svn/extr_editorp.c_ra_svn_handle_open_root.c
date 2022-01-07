
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int edit_baton; TYPE_1__* editor; int pool; } ;
typedef TYPE_2__ ra_svn_driver_state_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* open_root ) (int ,int ,int *,void**) ;} ;


 int FALSE ;
 int SVN_CMD_ERR (int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int store_token (TYPE_2__*,void*,int *,int ,int *) ;
 int stub1 (int ,int ,int *,void**) ;
 int * svn_pool_create (int ) ;
 int svn_ra_svn__parse_tuple (int const*,char*,int *,int **) ;

__attribute__((used)) static svn_error_t *
ra_svn_handle_open_root(svn_ra_svn_conn_t *conn,
                        apr_pool_t *pool,
                        const svn_ra_svn__list_t *params,
                        ra_svn_driver_state_t *ds)
{
  svn_revnum_t rev;
  apr_pool_t *subpool;
  svn_string_t *token;
  void *root_baton;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "(?r)s", &rev, &token));
  subpool = svn_pool_create(ds->pool);
  SVN_CMD_ERR(ds->editor->open_root(ds->edit_baton, rev, subpool,
                                    &root_baton));
  store_token(ds, root_baton, token, FALSE, subpool);
  return SVN_NO_ERROR;
}
