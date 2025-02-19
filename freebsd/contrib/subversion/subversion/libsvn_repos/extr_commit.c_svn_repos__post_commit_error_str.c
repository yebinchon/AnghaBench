
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char const* message; struct TYPE_7__* child; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED ;
 char const* _ (char*) ;
 char* apr_psprintf (int *,char const*,char const*,...) ;
 char const* apr_pstrdup (int *,char const*) ;
 TYPE_1__* svn_error_find_cause (TYPE_1__*,int ) ;
 TYPE_1__* svn_error_purge_tracing (TYPE_1__*) ;

const char *
svn_repos__post_commit_error_str(svn_error_t *err,
                                 apr_pool_t *pool)
{
  svn_error_t *hook_err1, *hook_err2;
  const char *msg;

  if (! err)
    return _("(no error)");

  err = svn_error_purge_tracing(err);





  hook_err1 = svn_error_find_cause(err, SVN_ERR_REPOS_POST_COMMIT_HOOK_FAILED);
  if (hook_err1 && hook_err1->child)
    hook_err2 = hook_err1->child;
  else
    hook_err2 = hook_err1;
  if (hook_err1)
    {
      if (err == hook_err1)
        {
          if (hook_err2->message)
            msg = apr_pstrdup(pool, hook_err2->message);
          else
            msg = _("post-commit hook failed with no error message.");
        }
      else
        {
          msg = hook_err2->message
                  ? apr_pstrdup(pool, hook_err2->message)
                  : _("post-commit hook failed with no error message.");
          msg = apr_psprintf(
                  pool,
                  _("post commit FS processing had error:\n%s\n%s"),
                  err->message ? err->message : _("(no error message)"),
                  msg);
        }
    }
  else
    {
      msg = apr_psprintf(pool,
                         _("post commit FS processing had error:\n%s"),
                         err->message ? err->message
                                      : _("(no error message)"));
    }

  return msg;
}
