
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct ev2_edit_baton {int edit_pool; int fetch_props_baton; int (* fetch_props_func ) (int **,int ,char const*,scalar_t__,int ,int *) ;} ;
struct change_node {scalar_t__ kind; scalar_t__ changing; char const* copyfrom_path; scalar_t__ copyfrom_rev; scalar_t__ action; int * props; } ;
typedef int apr_pool_t ;


 scalar_t__ RESTRUCTURE_ADD ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int ) ;
 char const* apr_pstrdup (int ,char const*) ;
 struct change_node* locate_change (struct ev2_edit_baton*,char const*) ;
 int stub1 (int **,int ,char const*,scalar_t__,int ,int *) ;
 int stub2 (int **,int ,char const*,scalar_t__,int ,int *) ;
 int svn_hash_sets (int *,char const*,int *) ;
 scalar_t__ svn_node_unknown ;
 int * svn_string_dup (int const*,int ) ;

__attribute__((used)) static svn_error_t *
apply_propedit(struct ev2_edit_baton *eb,
               const char *relpath,
               svn_node_kind_t kind,
               svn_revnum_t base_revision,
               const char *name,
               const svn_string_t *value,
               apr_pool_t *scratch_pool)
{
  struct change_node *change = locate_change(eb, relpath);

  SVN_ERR_ASSERT(change->kind == svn_node_unknown || change->kind == kind);
  change->kind = kind;


  SVN_ERR_ASSERT(!SVN_IS_VALID_REVNUM(change->changing)
                 || change->changing == base_revision);
  change->changing = base_revision;

  if (change->props == ((void*)0))
    {







      if (change->copyfrom_path)
        SVN_ERR(eb->fetch_props_func(&change->props,
                                     eb->fetch_props_baton,
                                     change->copyfrom_path,
                                     change->copyfrom_rev,
                                     eb->edit_pool, scratch_pool));
      else if (change->action == RESTRUCTURE_ADD)
        change->props = apr_hash_make(eb->edit_pool);
      else
        SVN_ERR(eb->fetch_props_func(&change->props,
                                     eb->fetch_props_baton,
                                     relpath, base_revision,
                                     eb->edit_pool, scratch_pool));
    }

  if (value == ((void*)0))
    svn_hash_sets(change->props, name, ((void*)0));
  else
    svn_hash_sets(change->props,
                  apr_pstrdup(eb->edit_pool, name),
                  svn_string_dup(value, eb->edit_pool));

  return SVN_NO_ERROR;
}
