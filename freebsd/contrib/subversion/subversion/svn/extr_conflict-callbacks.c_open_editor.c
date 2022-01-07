
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int buf ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_CL_NO_EXTERNAL_EDITOR ;
 scalar_t__ SVN_ERR_EXTERNAL_PROGRAM ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int stderr ;
 TYPE_1__* svn_cmdline__edit_file_externally (char const*,char const*,int *,int *) ;
 int svn_cmdline_fprintf (int ,int *,char*,...) ;
 char* svn_err_best_message (TYPE_1__*,char*,int) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
open_editor(svn_boolean_t *performed_edit,
            const char *merged_abspath,
            const char *editor_cmd,
            apr_hash_t *config,
            apr_pool_t *pool)
{
  svn_error_t *err;

  if (merged_abspath)
    {
      err = svn_cmdline__edit_file_externally(merged_abspath, editor_cmd,
                                              config, pool);
      if (err && (err->apr_err == SVN_ERR_CL_NO_EXTERNAL_EDITOR ||
                  err->apr_err == SVN_ERR_EXTERNAL_PROGRAM))
        {
          char buf[1024];
          const char *message;

          message = svn_err_best_message(err, buf, sizeof(buf));
          SVN_ERR(svn_cmdline_fprintf(stderr, pool, "%s\n", message));
          svn_error_clear(err);
        }
      else if (err)
        return svn_error_trace(err);
      else
        *performed_edit = TRUE;
    }
  else
    SVN_ERR(svn_cmdline_fprintf(stderr, pool,
                                _("Invalid option; there's no "
                                  "merged version to edit.\n\n")));

  return SVN_NO_ERROR;
}
