
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int operation; int new_filename; int old_filename; } ;
typedef TYPE_1__ svn_patch_t ;
typedef int svn_error_t ;
typedef int ptrdiff_t ;
typedef enum parse_state { ____Placeholder_parse_state } parse_state ;
typedef int apr_pool_t ;


 int STRLEN_LITERAL (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int grab_filename (int *,char const*,int *,int *) ;
 int state_git_diff_seen ;
 int state_start ;
 int strlen (char*) ;
 int strncmp (char const*,char const*,int) ;
 void* strstr (char const*,char*) ;
 int svn_diff_op_modified ;

__attribute__((used)) static svn_error_t *
git_start(enum parse_state *new_state, char *line, svn_patch_t *patch,
          apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{
  const char *old_path_start;
  char *old_path_end;
  const char *new_path_start;
  const char *new_path_end;
  char *new_path_marker;
  const char *old_path_marker;
  old_path_marker = strstr(line, " a/");

  if (! old_path_marker)
    {
      *new_state = state_start;
      return SVN_NO_ERROR;
    }

  if (! *(old_path_marker + 3))
    {
      *new_state = state_start;
      return SVN_NO_ERROR;
    }

  new_path_marker = strstr(old_path_marker, " b/");

  if (! new_path_marker)
    {
      *new_state = state_start;
      return SVN_NO_ERROR;
    }

  if (! *(new_path_marker + 3))
    {
      *new_state = state_start;
      return SVN_NO_ERROR;
    }






  old_path_start = line + STRLEN_LITERAL("diff --git a/");
  new_path_end = line + strlen(line);
  new_path_start = old_path_start;

  while (TRUE)
    {
      ptrdiff_t len_old;
      ptrdiff_t len_new;

      new_path_marker = strstr(new_path_start, " b/");


      if (! new_path_marker)
        break;

      old_path_end = new_path_marker;
      new_path_start = new_path_marker + STRLEN_LITERAL(" b/");


      if (! *new_path_start)
        break;

      len_old = old_path_end - old_path_start;
      len_new = new_path_end - new_path_start;


      if (len_old == len_new
          && ! strncmp(old_path_start, new_path_start, len_old))
        {
          *old_path_end = '\0';
          SVN_ERR(grab_filename(&patch->old_filename, old_path_start,
                                result_pool, scratch_pool));

          SVN_ERR(grab_filename(&patch->new_filename, new_path_start,
                                result_pool, scratch_pool));
          break;
        }
    }



  patch->operation = svn_diff_op_modified;

  *new_state = state_git_diff_seen;
  return SVN_NO_ERROR;
}
