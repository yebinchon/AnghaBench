
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* svn_revnum_t ;
typedef int svn_error_t ;
struct editor_baton {int fetch_kind_baton; int (* fetch_kind_func ) (int *,int ,int ,void*,int *) ;int edit_pool; int changes; } ;
struct change_node {void* copyfrom_rev; int copyfrom_path; int kind; void* deleting; int action; } ;
typedef int apr_pool_t ;


 int RESTRUCTURE_ADD ;
 int RESTRUCTURE_DELETE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_pstrdup (int ,char const*) ;
 struct change_node* insert_change (char const*,int ) ;
 int stub1 (int *,int ,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
move_cb(void *baton,
        const char *src_relpath,
        svn_revnum_t src_revision,
        const char *dst_relpath,
        svn_revnum_t replaces_rev,
        apr_pool_t *scratch_pool)
{
  struct editor_baton *eb = baton;
  struct change_node *change;



  change = insert_change(src_relpath, eb->changes);
  change->action = RESTRUCTURE_DELETE;

  change->deleting = src_revision;

  change = insert_change(dst_relpath, eb->changes);
  change->action = RESTRUCTURE_ADD;

  change->deleting = replaces_rev;
  change->copyfrom_path = apr_pstrdup(eb->edit_pool, src_relpath);
  change->copyfrom_rev = src_revision;



  SVN_ERR(eb->fetch_kind_func(&change->kind, eb->fetch_kind_baton,
                              change->copyfrom_path,
                              change->copyfrom_rev,
                              scratch_pool));



  return SVN_NO_ERROR;
}
