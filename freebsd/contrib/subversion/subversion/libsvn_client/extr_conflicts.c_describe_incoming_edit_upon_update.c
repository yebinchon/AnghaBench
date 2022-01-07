
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int apr_pool_t ;


 int _ (char*) ;
 char const* apr_psprintf (int *,int ,scalar_t__,scalar_t__) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_symlink ;

__attribute__((used)) static const char *
describe_incoming_edit_upon_update(svn_revnum_t old_rev,
                                   svn_revnum_t new_rev,
                                   svn_node_kind_t old_node_kind,
                                   svn_node_kind_t new_node_kind,
                                   apr_pool_t *result_pool)
{
  if (old_rev < new_rev)
    {
      if (new_node_kind == svn_node_dir)
        return apr_psprintf(result_pool,
                            _("Changes destined for a directory arrived "
                              "via the following revisions during update "
                              "from r%ld to r%ld."), old_rev, new_rev);
      else if (new_node_kind == svn_node_file ||
               new_node_kind == svn_node_symlink)
        return apr_psprintf(result_pool,
                            _("Changes destined for a file arrived "
                              "via the following revisions during update "
                              "from r%ld to r%ld"), old_rev, new_rev);
      else
        return apr_psprintf(result_pool,
                            _("Changes from the following revisions arrived "
                              "during update from r%ld to r%ld"),
                            old_rev, new_rev);
    }
  else
    {
      if (new_node_kind == svn_node_dir)
        return apr_psprintf(result_pool,
                            _("Changes destined for a directory arrived "
                              "via the following revisions during backwards "
                              "update from r%ld to r%ld"),
                            old_rev, new_rev);
      else if (new_node_kind == svn_node_file ||
               new_node_kind == svn_node_symlink)
        return apr_psprintf(result_pool,
                            _("Changes destined for a file arrived "
                              "via the following revisions during backwards "
                              "update from r%ld to r%ld"),
                            old_rev, new_rev);
      else
        return apr_psprintf(result_pool,
                            _("Changes from the following revisions arrived "
                              "during backwards update from r%ld to r%ld"),
                            old_rev, new_rev);
    }
}
