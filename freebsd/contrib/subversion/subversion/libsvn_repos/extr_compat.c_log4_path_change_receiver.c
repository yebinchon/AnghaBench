
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int len; int data; } ;
struct TYPE_9__ {TYPE_1__ path; scalar_t__ prop_mod; scalar_t__ text_mod; int node_kind; int copyfrom_rev; int copyfrom_path; int change_kind; } ;
typedef TYPE_2__ svn_repos_path_change_t ;
struct TYPE_10__ {void* props_modified; void* text_modified; int node_kind; int copyfrom_rev; int copyfrom_path; int action; } ;
typedef TYPE_3__ svn_log_changed_path2_t ;
typedef int svn_error_t ;
struct TYPE_11__ {int * changes; int changes_pool; } ;
typedef TYPE_4__ log_entry_receiver_baton_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int apr_hash_set (int *,char const*,int ,TYPE_3__*) ;
 int apr_pstrdup (int ,int ) ;
 char* apr_pstrmemdup (int ,int ,int ) ;
 int path_change_kind_to_char (int ) ;
 int * svn_hash__make (int ) ;
 TYPE_3__* svn_log_changed_path2_create (int ) ;
 void* svn_tristate_false ;
 void* svn_tristate_true ;

__attribute__((used)) static svn_error_t *
log4_path_change_receiver(void *baton,
                          svn_repos_path_change_t *change,
                          apr_pool_t *scratch_pool)
{
  log_entry_receiver_baton_t *b = baton;
  svn_log_changed_path2_t *change_copy;
  const char *path = apr_pstrmemdup(b->changes_pool, change->path.data,
                                    change->path.len);


  change_copy = svn_log_changed_path2_create(b->changes_pool);
  change_copy->action = path_change_kind_to_char(change->change_kind);

  if (change->copyfrom_path)
    change_copy->copyfrom_path = apr_pstrdup(b->changes_pool,
                                             change->copyfrom_path);

  change_copy->copyfrom_rev = change->copyfrom_rev;
  change_copy->node_kind = change->node_kind;
  change_copy->text_modified = change->text_mod ? svn_tristate_true
                                                : svn_tristate_false;
  change_copy->props_modified = change->prop_mod ? svn_tristate_true
                                                 : svn_tristate_false;



  if (b->changes == ((void*)0))
    b->changes = svn_hash__make(b->changes_pool);


  apr_hash_set(b->changes, path, change->path.len, change_copy);

  return SVN_NO_ERROR;
}
