
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ svn_tristate_t ;
typedef int svn_revnum_t ;
struct TYPE_22__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
struct TYPE_21__ {char* path; } ;
struct TYPE_23__ {scalar_t__ supports_deadprop_count; TYPE_1__ session_url; } ;
typedef TYPE_3__ svn_ra_serf__session_t ;
typedef int svn_ra_serf__handler_t ;
struct TYPE_24__ {scalar_t__ apr_err; } ;
typedef TYPE_4__ svn_error_t ;
struct TYPE_25__ {int has_props; } ;
typedef TYPE_5__ svn_dirent_t ;
struct fill_dirent_baton_t {scalar_t__* supports_deadprop_count; TYPE_5__* entry; int * result_pool; } ;
typedef int apr_pool_t ;


 int SVN_DIRENT_ALL ;
 int SVN_ERR (TYPE_4__*) ;
 scalar_t__ SVN_ERR_FS_NOT_FOUND ;
 int SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 TYPE_4__* SVN_NO_ERROR ;
 int fill_dirent_propfunc ;
 int get_dirent_props (int ,TYPE_3__*,int *) ;
 TYPE_5__* svn_dirent_create (int *) ;
 int svn_error_clear (TYPE_4__*) ;
 TYPE_4__* svn_error_trace (TYPE_4__*) ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 TYPE_4__* svn_ra_serf__context_run_one (int *,int *) ;
 TYPE_4__* svn_ra_serf__create_propfind_handler (int **,TYPE_3__*,char const*,int ,char*,int ,int ,struct fill_dirent_baton_t*,int *) ;
 TYPE_4__* svn_ra_serf__get_stable_url (char const**,int *,TYPE_3__*,char const*,int ,int *,int *) ;
 scalar_t__ svn_tristate_false ;
 scalar_t__ svn_tristate_unknown ;

svn_error_t *
svn_ra_serf__stat(svn_ra_session_t *ra_session,
                  const char *relpath,
                  svn_revnum_t revision,
                  svn_dirent_t **dirent,
                  apr_pool_t *pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_error_t *err;
  struct fill_dirent_baton_t fdb;
  svn_tristate_t deadprop_count = svn_tristate_unknown;
  svn_ra_serf__handler_t *handler;
  const char *url;

  url = session->session_url.path;


  if (relpath)
    url = svn_path_url_add_component2(url, relpath, pool);



  if (SVN_IS_VALID_REVNUM(revision))
    {
      SVN_ERR(svn_ra_serf__get_stable_url(&url, ((void*)0) ,
                                          session,
                                          url, revision,
                                          pool, pool));
    }

  fdb.entry = svn_dirent_create(pool);
  fdb.supports_deadprop_count = &deadprop_count;
  fdb.result_pool = pool;

  SVN_ERR(svn_ra_serf__create_propfind_handler(&handler, session, url,
                                               SVN_INVALID_REVNUM, "0",
                                               get_dirent_props(SVN_DIRENT_ALL,
                                                                session,
                                                                pool),
                                               fill_dirent_propfunc, &fdb, pool));

  err = svn_ra_serf__context_run_one(handler, pool);

  if (err)
    {
      if (err->apr_err == SVN_ERR_FS_NOT_FOUND)
        {
          svn_error_clear(err);
          *dirent = ((void*)0);
          return SVN_NO_ERROR;
        }
      else
        return svn_error_trace(err);
    }

  if (deadprop_count == svn_tristate_false
      && session->supports_deadprop_count == svn_tristate_unknown
      && !fdb.entry->has_props)
    {


      session->supports_deadprop_count = svn_tristate_false;


      SVN_ERR(svn_ra_serf__context_run_one(handler, pool));
    }

  if (deadprop_count != svn_tristate_unknown)
    session->supports_deadprop_count = deadprop_count;

  *dirent = fdb.entry;

  return SVN_NO_ERROR;
}
