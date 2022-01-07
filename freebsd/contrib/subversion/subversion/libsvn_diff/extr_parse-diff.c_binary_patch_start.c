
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_patch_t ;
typedef int svn_error_t ;
typedef enum parse_state { ____Placeholder_parse_state } parse_state ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int state_binary_patch_found ;

__attribute__((used)) static svn_error_t *
binary_patch_start(enum parse_state *new_state, char *line, svn_patch_t *patch,
             apr_pool_t *result_pool, apr_pool_t *scratch_pool)
{
  *new_state = state_binary_patch_found;
  return SVN_NO_ERROR;
}
