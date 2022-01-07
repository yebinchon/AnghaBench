
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_error_t ;
struct file_baton {int action; int is_copy; int copyfrom_rev; int pool; int copyfrom_path; } ;
struct dir_baton {int deleted_entries; int eb; } ;
typedef int apr_pool_t ;


 scalar_t__ ARE_VALID_COPY_ARGS (char const*,int ) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int dump_pending_dir (int ,int *) ;
 struct file_baton* make_file_baton (char const*,struct dir_baton*,int *) ;
 void* svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,char const*,int *) ;
 int svn_node_action_add ;
 int svn_node_action_replace ;
 int svn_relpath_canonicalize (char const*,int ) ;

__attribute__((used)) static svn_error_t *
add_file(const char *path,
         void *parent_baton,
         const char *copyfrom_path,
         svn_revnum_t copyfrom_rev,
         apr_pool_t *pool,
         void **file_baton)
{
  struct dir_baton *pb = parent_baton;
  struct file_baton *fb;
  void *was_deleted;

  SVN_ERR(dump_pending_dir(pb->eb, pool));


  fb = make_file_baton(path, pb, pool);


  was_deleted = svn_hash_gets(pb->deleted_entries, path);


  if (ARE_VALID_COPY_ARGS(copyfrom_path, copyfrom_rev))
    {
      fb->copyfrom_path = svn_relpath_canonicalize(copyfrom_path, fb->pool);
      fb->copyfrom_rev = copyfrom_rev;
      fb->is_copy = TRUE;
    }
  fb->action = was_deleted ? svn_node_action_replace : svn_node_action_add;


  if (was_deleted)
    svn_hash_sets(pb->deleted_entries, path, ((void*)0));

  *file_baton = fb;
  return SVN_NO_ERROR;
}
