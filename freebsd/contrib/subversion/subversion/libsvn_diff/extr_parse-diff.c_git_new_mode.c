
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ new_executable_bit; int new_symlink_bit; } ;
typedef TYPE_1__ svn_patch_t ;
typedef int svn_error_t ;
typedef enum parse_state { ____Placeholder_parse_state } parse_state ;
typedef int apr_pool_t ;


 int STRLEN_LITERAL (char*) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int parse_git_mode_bits (scalar_t__*,int *,char*) ;
 int state_git_mode_seen ;
 scalar_t__ svn_tristate_unknown ;

__attribute__((used)) static svn_error_t *
git_new_mode(enum parse_state *new_state, char *line, svn_patch_t *patch,
             apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{
  SVN_ERR(parse_git_mode_bits(&patch->new_executable_bit,
                              &patch->new_symlink_bit,
                              line + STRLEN_LITERAL("new mode ")));
  *new_state = state_git_mode_seen;
  return SVN_NO_ERROR;
}
