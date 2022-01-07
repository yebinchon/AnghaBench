
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* priv; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_7__ {int * useragent; int * username; int * uuid; int fs; int repos; int fs_path; int repos_url; int callback_baton; int callbacks; } ;
typedef TYPE_2__ svn_ra_local__session_baton_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int * apr_pstrdup (int *,int *) ;
 int ignore_warnings ;
 int svn_fs_set_warning_func (int ,int ,int *) ;
 int svn_ra_local__split_URL (int *,int *,char const**,char const*,int *) ;
 int svn_repos_fs (int ) ;
 int svn_stringbuf_create (char const*,int *) ;

__attribute__((used)) static svn_error_t *
svn_ra_local__dup_session(svn_ra_session_t *new_session,
                          svn_ra_session_t *session,
                          const char *new_session_url,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_ra_local__session_baton_t *old_sess = session->priv;
  svn_ra_local__session_baton_t *new_sess;
  const char *fs_path;


  new_sess = apr_pcalloc(result_pool, sizeof(*new_sess));
  new_sess->callbacks = old_sess->callbacks;
  new_sess->callback_baton = old_sess->callback_baton;




  SVN_ERR(svn_ra_local__split_URL(&(new_sess->repos),
                                  &(new_sess->repos_url),
                                  &fs_path,
                                  new_session_url,
                                  result_pool));

  new_sess->fs_path = svn_stringbuf_create(fs_path, result_pool);



  new_sess->fs = svn_repos_fs(new_sess->repos);


  svn_fs_set_warning_func(new_sess->fs, ignore_warnings, ((void*)0));


  new_sess->uuid = apr_pstrdup(result_pool, old_sess->uuid);

  new_sess->username = old_sess->username
                            ? apr_pstrdup(result_pool, old_sess->username)
                            : ((void*)0);

  new_sess->useragent = apr_pstrdup(result_pool, old_sess->useragent);
  new_session->priv = new_sess;

  return SVN_NO_ERROR;
}
