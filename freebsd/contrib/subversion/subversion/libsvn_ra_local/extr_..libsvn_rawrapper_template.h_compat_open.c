
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * pool; TYPE_7__* vtable; } ;
typedef TYPE_1__ svn_ra_session_t ;
struct TYPE_9__ {int * auth_baton; int invalidate_wc_props; int push_wc_prop; int set_wc_prop; int get_wc_prop; int open_tmp_file; } ;
typedef TYPE_2__ svn_ra_callbacks_t ;
struct TYPE_10__ {int * progress_baton; int * progress_func; int invalidate_wc_props; int push_wc_prop; int set_wc_prop; int get_wc_prop; int * auth_baton; int open_tmp_file; } ;
typedef TYPE_3__ svn_ra_callbacks2_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_11__ {int (* open_session ) (TYPE_1__*,char const**,char const*,TYPE_3__*,void*,int *,int *,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_SESSION_URL_MISMATCH ;
 int * SVN_NO_ERROR ;
 TYPE_7__ VTBL ;
 int _ (char*) ;
 void* apr_pcalloc (int *,int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int stub1 (TYPE_1__*,char const**,char const*,TYPE_3__*,void*,int *,int *,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *compat_open(void **session_baton,
                                const char *repos_URL,
                                const svn_ra_callbacks_t *callbacks,
                                void *callback_baton,
                                apr_hash_t *config,
                                apr_pool_t *pool)
{
  apr_pool_t *sesspool = svn_pool_create(pool);
  svn_ra_callbacks2_t *callbacks2 = apr_pcalloc(sesspool,
                                                sizeof(*callbacks2));

  svn_ra_session_t *sess = apr_pcalloc(sesspool, sizeof(*sess));
  const char *session_url;

  sess->vtable = &VTBL;
  sess->pool = sesspool;

  callbacks2->open_tmp_file = callbacks->open_tmp_file;
  callbacks2->auth_baton = callbacks->auth_baton;
  callbacks2->get_wc_prop = callbacks->get_wc_prop;
  callbacks2->set_wc_prop = callbacks->set_wc_prop;
  callbacks2->push_wc_prop = callbacks->push_wc_prop;
  callbacks2->invalidate_wc_props = callbacks->invalidate_wc_props;
  callbacks2->progress_func = ((void*)0);
  callbacks2->progress_baton = ((void*)0);

  SVN_ERR(VTBL.open_session(sess, &session_url, repos_URL,
                            callbacks2, callback_baton,
                            callbacks ? callbacks->auth_baton : ((void*)0),
                            config, sesspool, sesspool));

  if (strcmp(repos_URL, session_url) != 0)
    {
      svn_pool_destroy(sesspool);
      return svn_error_createf(SVN_ERR_RA_SESSION_URL_MISMATCH, ((void*)0),
                               _("Session URL '%s' does not match requested "
                                 " URL '%s', and redirection was disallowed."),
                               session_url, repos_URL);
    }

  *session_baton = sess;
  return SVN_NO_ERROR;
}
