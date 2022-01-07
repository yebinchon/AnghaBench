
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_baton {int * ood_changed_author; int ood_kind; int name; int repos_relpath; scalar_t__ ood_changed_date; int ood_changed_rev; struct edit_baton* edit_baton; struct dir_baton* dir_baton; int * pool; int local_abspath; } ;
struct edit_baton {int anchor_abspath; } ;
struct dir_baton {struct edit_baton* edit_baton; } ;
typedef int apr_pool_t ;


 int SVN_INVALID_REVNUM ;
 struct file_baton* apr_pcalloc (int *,int) ;
 int find_dir_repos_relpath (struct dir_baton*,int *) ;
 int svn_dirent_basename (int ,int *) ;
 int svn_dirent_join (int ,char const*,int *) ;
 int svn_node_file ;
 int svn_relpath_join (int ,int ,int *) ;

__attribute__((used)) static struct file_baton *
make_file_baton(struct dir_baton *parent_dir_baton,
                const char *path,
                apr_pool_t *pool)
{
  struct dir_baton *pb = parent_dir_baton;
  struct edit_baton *eb = pb->edit_baton;
  struct file_baton *f = apr_pcalloc(pool, sizeof(*f));


  f->local_abspath = svn_dirent_join(eb->anchor_abspath, path, pool);
  f->name = svn_dirent_basename(f->local_abspath, ((void*)0));
  f->pool = pool;
  f->dir_baton = pb;
  f->edit_baton = eb;
  f->ood_changed_rev = SVN_INVALID_REVNUM;
  f->ood_changed_date = 0;
  f->repos_relpath = svn_relpath_join(find_dir_repos_relpath(pb, pool),
                                      f->name, pool);
  f->ood_kind = svn_node_file;
  f->ood_changed_author = ((void*)0);
  return f;
}
