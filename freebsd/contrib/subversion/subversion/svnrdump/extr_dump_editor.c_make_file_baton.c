
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_baton {int action; int copyfrom_rev; int * copyfrom_path; int is_copy; void* deleted_props; void* props; int repos_relpath; int * pool; int eb; } ;
struct dir_baton {int eb; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_INVALID_REVNUM ;
 void* apr_hash_make (int *) ;
 struct file_baton* apr_pcalloc (int *,int) ;
 int svn_node_action_change ;
 int svn_relpath_canonicalize (char const*,int *) ;

__attribute__((used)) static struct file_baton *
make_file_baton(const char *path,
                struct dir_baton *pb,
                apr_pool_t *pool)
{
  struct file_baton *new_fb = apr_pcalloc(pool, sizeof(*new_fb));

  new_fb->eb = pb->eb;
  new_fb->pool = pool;
  new_fb->repos_relpath = svn_relpath_canonicalize(path, pool);
  new_fb->props = apr_hash_make(pool);
  new_fb->deleted_props = apr_hash_make(pool);
  new_fb->is_copy = FALSE;
  new_fb->copyfrom_path = ((void*)0);
  new_fb->copyfrom_rev = SVN_INVALID_REVNUM;
  new_fb->action = svn_node_action_change;

  return new_fb;
}
