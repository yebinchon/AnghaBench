
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; TYPE_2__* priv; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_6__ {char* username; int fs; scalar_t__ auth_baton; int uuid; } ;
typedef TYPE_2__ svn_ra_local__session_baton_t ;
typedef int svn_fs_access_t ;
typedef int svn_error_t ;
typedef int svn_auth_iterstate_t ;
struct TYPE_7__ {scalar_t__ username; } ;
typedef TYPE_3__ svn_auth_cred_username_t ;
typedef int apr_pool_t ;


 int SVN_AUTH_CRED_USERNAME ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int ,int ,int ,int ) ;
 char* apr_pstrdup (int ,scalar_t__) ;
 int cleanup_access ;
 int svn_auth_first_credentials (void**,int **,int ,int ,scalar_t__,int *) ;
 int svn_auth_save_credentials (int *,int *) ;
 int svn_error_clear (int ) ;
 int svn_fs_create_access (int **,char*,int ) ;
 int svn_fs_set_access (int ,int *) ;

__attribute__((used)) static svn_error_t *
get_username(svn_ra_session_t *session,
             apr_pool_t *scratch_pool)
{
  svn_ra_local__session_baton_t *sess = session->priv;


  if (! sess->username)
    {


      if (sess->auth_baton)
        {
          void *creds;
          svn_auth_cred_username_t *username_creds;
          svn_auth_iterstate_t *iterstate;

          SVN_ERR(svn_auth_first_credentials(&creds, &iterstate,
                                             SVN_AUTH_CRED_USERNAME,
                                             sess->uuid,
                                             sess->auth_baton,
                                             scratch_pool));





          username_creds = creds;
          if (username_creds && username_creds->username)
            {
              sess->username = apr_pstrdup(session->pool,
                                           username_creds->username);
              svn_error_clear(svn_auth_save_credentials(iterstate,
                                                        scratch_pool));
            }
          else
            sess->username = "";
        }
      else
        sess->username = "";
    }





  if (*sess->username)
    {
      svn_fs_access_t *access_ctx;

      SVN_ERR(svn_fs_create_access(&access_ctx, sess->username,
                                   session->pool));
      SVN_ERR(svn_fs_set_access(sess->fs, access_ctx));



      apr_pool_cleanup_register(session->pool, sess->fs, cleanup_access,
                                apr_pool_cleanup_null);
    }

  return SVN_NO_ERROR;
}
