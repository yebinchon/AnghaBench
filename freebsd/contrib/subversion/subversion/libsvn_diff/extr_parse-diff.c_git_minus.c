
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int old_filename; } ;
typedef TYPE_1__ svn_patch_t ;
typedef int svn_error_t ;
typedef enum parse_state { ____Placeholder_parse_state } parse_state ;
typedef int apr_pool_t ;


 int STRLEN_LITERAL (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int grab_filename (int *,char*,int *,int *) ;
 scalar_t__ starts_with (char*,char*) ;
 int state_git_minus_seen ;
 char* strchr (char*,char) ;

__attribute__((used)) static svn_error_t *
git_minus(enum parse_state *new_state, char *line, svn_patch_t *patch,
          apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{


  char *tab = strchr(line, '\t');
  if (tab)
    *tab = '\0';

  if (starts_with(line, "--- /dev/null"))
    SVN_ERR(grab_filename(&patch->old_filename, "/dev/null",
                          result_pool, scratch_pool));
  else
    SVN_ERR(grab_filename(&patch->old_filename, line + STRLEN_LITERAL("--- a/"),
                          result_pool, scratch_pool));

  *new_state = state_git_minus_seen;
  return SVN_NO_ERROR;
}
