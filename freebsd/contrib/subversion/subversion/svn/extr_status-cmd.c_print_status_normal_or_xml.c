
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_status_t ;
struct status_baton {int ctx; int tree_conflicts; int prop_conflicts; int text_conflicts; int repos_locks; int skip_unrecognized; int show_last_committed; int detailed; int suppress_externals_placeholders; int target_path; int target_abspath; scalar_t__ xml_mode; } ;
typedef int apr_pool_t ;


 int * svn_cl__print_status (int ,int ,char const*,int const*,int ,int ,int ,int ,int ,int *,int *,int *,int ,int *) ;
 int * svn_cl__print_status_xml (int ,int ,char const*,int const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
print_status_normal_or_xml(void *baton,
                           const char *path,
                           const svn_client_status_t *status,
                           apr_pool_t *pool)
{
  struct status_baton *sb = baton;

  if (sb->xml_mode)
    return svn_cl__print_status_xml(sb->target_abspath, sb->target_path,
                                    path, status, sb->ctx, pool);
  else
    return svn_cl__print_status(sb->target_abspath, sb->target_path,
                                path, status,
                                sb->suppress_externals_placeholders,
                                sb->detailed,
                                sb->show_last_committed,
                                sb->skip_unrecognized,
                                sb->repos_locks,
                                &sb->text_conflicts,
                                &sb->prop_conflicts,
                                &sb->tree_conflicts,
                                sb->ctx,
                                pool);
}
