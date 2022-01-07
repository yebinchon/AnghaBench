
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct conflict_tree_incoming_add_details {int deleted_rev; int deleted_rev_author; int added_rev; int added_rev_author; } ;
typedef int apr_pool_t ;


 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int _ (char*) ;
 char const* apr_psprintf (int *,int ,char const*,int ,int ,int ,...) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_symlink ;

__attribute__((used)) static const char *
describe_incoming_add_upon_switch(
  struct conflict_tree_incoming_add_details *details,
  svn_node_kind_t victim_node_kind,
  const char *new_repos_relpath,
  svn_revnum_t new_rev,
  apr_pool_t *result_pool)
{
  if (victim_node_kind == svn_node_dir)
    {
      if (SVN_IS_VALID_REVNUM(details->added_rev) &&
          SVN_IS_VALID_REVNUM(details->deleted_rev))
        return apr_psprintf(result_pool,
                            _("A new directory appeared during switch to\n"
                              "'^/%s@%ld'.\n"
                              "It was added by %s in r%ld and later deleted "
                              "by %s in r%ld."), new_repos_relpath, new_rev,
                            details->added_rev_author, details->added_rev,
                            details->deleted_rev_author, details->deleted_rev);
      else if (SVN_IS_VALID_REVNUM(details->added_rev))
        return apr_psprintf(result_pool,
                            _("A new directory appeared during switch to\n"
                             "'^/%s@%ld'.\nIt was added by %s in r%ld."),
                            new_repos_relpath, new_rev,
                            details->added_rev_author, details->added_rev);
      else
        return apr_psprintf(result_pool,
                            _("A new directory appeared during switch to\n"
                              "'^/%s@%ld'.\nIt was deleted by %s in r%ld."),
                            new_repos_relpath, new_rev,
                            details->deleted_rev_author, details->deleted_rev);
    }
  else if (victim_node_kind == svn_node_file ||
           victim_node_kind == svn_node_symlink)
    {
      if (SVN_IS_VALID_REVNUM(details->added_rev) &&
          SVN_IS_VALID_REVNUM(details->deleted_rev))
        return apr_psprintf(result_pool,
                            _("A new file appeared during switch to\n"
                              "'^/%s@%ld'.\n"
                              "It was added by %s in r%ld and later deleted "
                              "by %s in r%ld."), new_repos_relpath, new_rev,
                            details->added_rev_author, details->added_rev,
                            details->deleted_rev_author, details->deleted_rev);
      else if (SVN_IS_VALID_REVNUM(details->added_rev))
        return apr_psprintf(result_pool,
                            _("A new file appeared during switch to\n"
                              "'^/%s@%ld'.\n"
                              "It was added by %s in r%ld."),
                            new_repos_relpath, new_rev,
                            details->added_rev_author, details->added_rev);
      else
        return apr_psprintf(result_pool,
                            _("A new file appeared during switch to\n"
                              "'^/%s@%ld'.\n"
                              "It was deleted by %s in r%ld."),
                            new_repos_relpath, new_rev,
                            details->deleted_rev_author, details->deleted_rev);
    }
  else
    {
      if (SVN_IS_VALID_REVNUM(details->added_rev) &&
          SVN_IS_VALID_REVNUM(details->deleted_rev))
        return apr_psprintf(result_pool,
                            _("A new item appeared during switch to\n"
                              "'^/%s@%ld'.\n"
                              "It was added by %s in r%ld and later deleted "
                              "by %s in r%ld."), new_repos_relpath, new_rev,
                            details->added_rev_author, details->added_rev,
                            details->deleted_rev_author, details->deleted_rev);
      else if (SVN_IS_VALID_REVNUM(details->added_rev))
        return apr_psprintf(result_pool,
                            _("A new item appeared during switch to\n"
                              "'^/%s@%ld'.\n"
                              "It was added by %s in r%ld."),
                            new_repos_relpath, new_rev,
                            details->added_rev_author, details->added_rev);
      else
        return apr_psprintf(result_pool,
                            _("A new item appeared during switch to\n"
                              "'^/%s@%ld'.\n"
                              "It was deleted by %s in r%ld."),
                            new_repos_relpath, new_rev,
                            details->deleted_rev_author, details->deleted_rev);
    }
}
