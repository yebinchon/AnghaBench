
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ new_executable_bit; scalar_t__ new_symlink_bit; scalar_t__ operation; scalar_t__ old_executable_bit; scalar_t__ old_symlink_bit; } ;
typedef TYPE_1__ svn_patch_t ;
typedef int svn_error_t ;
typedef enum parse_state { ____Placeholder_parse_state } parse_state ;
typedef int apr_pool_t ;


 int STRLEN_LITERAL (char*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int parse_git_mode_bits (scalar_t__*,scalar_t__*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ svn_diff_op_added ;
 scalar_t__ svn_diff_op_deleted ;
 scalar_t__ svn_tristate_unknown ;

__attribute__((used)) static svn_error_t *
git_index(enum parse_state *new_state, char *line, svn_patch_t *patch,
          apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{
  line = strchr(line + STRLEN_LITERAL("index "), ' ');

  if (line && patch->new_executable_bit == svn_tristate_unknown
           && patch->new_symlink_bit == svn_tristate_unknown
           && patch->operation != svn_diff_op_added
           && patch->operation != svn_diff_op_deleted)
    {
      SVN_ERR(parse_git_mode_bits(&patch->new_executable_bit,
                                  &patch->new_symlink_bit,
                                  line + 1));


      patch->old_executable_bit = patch->new_executable_bit;
      patch->old_symlink_bit = patch->new_symlink_bit;
    }



  return SVN_NO_ERROR;
}
