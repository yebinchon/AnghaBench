
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_node_kind_t ;
struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct propset_walk_baton {int notify_baton; int notify_func; int force; int propval; int propname; int db; } ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_ILLEGAL_TARGET ;
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 TYPE_1__* SVN_NO_ERROR ;
 TYPE_1__* do_propset (int ,char const*,int ,int ,int ,int ,int ,int ,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
propset_walk_cb(const char *local_abspath,
                svn_node_kind_t kind,
                void *walk_baton,
                apr_pool_t *scratch_pool)
{
  struct propset_walk_baton *wb = walk_baton;
  svn_error_t *err;

  err = do_propset(wb->db, local_abspath, kind, wb->propname, wb->propval,
                   wb->force, wb->notify_func, wb->notify_baton, scratch_pool);
  if (err && (err->apr_err == SVN_ERR_ILLEGAL_TARGET
              || err->apr_err == SVN_ERR_WC_PATH_UNEXPECTED_STATUS))
    {
      svn_error_clear(err);
      err = SVN_NO_ERROR;
    }

  return svn_error_trace(err);
}
