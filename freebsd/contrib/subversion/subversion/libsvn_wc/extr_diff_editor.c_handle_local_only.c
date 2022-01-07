
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_boolean_t ;
struct svn_wc__db_info_t {int status; scalar_t__ kind; scalar_t__ moved_here; } ;
struct edit_baton_t {int cancel_baton; int cancel_func; int diff_pristine; int processor; int db; int anchor_abspath; scalar_t__ ignore_ancestry; } ;
struct dir_baton_t {scalar_t__ depth; int pdb; int relpath; int local_abspath; scalar_t__ deletes; scalar_t__ local_info; scalar_t__ skip_children; int added; struct edit_baton_t* eb; } ;
typedef int apr_pool_t ;


 scalar_t__ NOT_PRESENT (int) ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int assert (int) ;
 int ensure_local_info (struct dir_baton_t*,int *) ;
 int strchr (char const*,char) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_infinity ;
 scalar_t__ svn_depth_unknown ;
 char* svn_dirent_join (int ,char const*,int *) ;
 char* svn_dirent_skip_ancestor (int ,char const*) ;
 struct svn_wc__db_info_t* svn_hash_gets (scalar_t__,char const*) ;
 int svn_hash_sets (scalar_t__,char const*,int *) ;
 scalar_t__ svn_node_dir ;
 int svn_relpath_join (int ,char const*,int *) ;
 int svn_wc__db_scan_moved (char const**,int *,int *,int *,int ,char const*,int *,int *) ;




 int svn_wc__diff_local_only_dir (int ,char const*,int ,scalar_t__,char const*,int ,int ,int ,int ,int ,int *) ;
 int svn_wc__diff_local_only_file (int ,char const*,int ,char const*,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
handle_local_only(struct dir_baton_t *pb,
                  const char *name,
                  apr_pool_t *scratch_pool)
{
  struct edit_baton_t *eb = pb->eb;
  const struct svn_wc__db_info_t *info;
  const char *child_abspath;
  const char *moved_from_relpath;
  svn_boolean_t repos_delete = (pb->deletes
                                && svn_hash_gets(pb->deletes, name));

  assert(!strchr(name, '/'));
  assert(!pb->added || eb->ignore_ancestry);

  if (pb->skip_children)
    return SVN_NO_ERROR;

  SVN_ERR(ensure_local_info(pb, scratch_pool));

  info = svn_hash_gets(pb->local_info, name);

  if (info == ((void*)0) || NOT_PRESENT(info->status))
    return SVN_NO_ERROR;

  switch (info->status)
    {
      case 128:
      case 129:
        if (!repos_delete)
          return SVN_NO_ERROR;
        svn_hash_sets(pb->deletes, name, ((void*)0));
        break;

      case 130:
        if (!(eb->diff_pristine && repos_delete))
          return SVN_NO_ERROR;
        break;

      case 131:
      default:
        break;
    }

  child_abspath = svn_dirent_join(pb->local_abspath, name, scratch_pool);

  if (info->moved_here)
    {
      const char *moved_from_abspath;

      SVN_ERR(svn_wc__db_scan_moved(&moved_from_abspath,
                                    ((void*)0), ((void*)0), ((void*)0),
                                    eb->db, child_abspath,
                                    scratch_pool, scratch_pool));
      SVN_ERR_ASSERT(moved_from_abspath != ((void*)0));

      moved_from_relpath = svn_dirent_skip_ancestor(
                                    eb->anchor_abspath,
                                    moved_from_abspath);
    }
  else
    moved_from_relpath = ((void*)0);

  if (info->kind == svn_node_dir)
    {
      svn_depth_t depth ;

      if (pb->depth == svn_depth_infinity || pb->depth == svn_depth_unknown)
        depth = pb->depth;
      else
        depth = svn_depth_empty;

      SVN_ERR(svn_wc__diff_local_only_dir(
                      eb->db,
                      child_abspath,
                      svn_relpath_join(pb->relpath, name, scratch_pool),
                      repos_delete ? svn_depth_infinity : depth,
                      moved_from_relpath,
                      eb->processor, pb->pdb,
                      eb->diff_pristine,
                      eb->cancel_func, eb->cancel_baton,
                      scratch_pool));
    }
  else
    SVN_ERR(svn_wc__diff_local_only_file(
                      eb->db,
                      child_abspath,
                      svn_relpath_join(pb->relpath, name, scratch_pool),
                      moved_from_relpath,
                      eb->processor, pb->pdb,
                      eb->diff_pristine,
                      eb->cancel_func, eb->cancel_baton,
                      scratch_pool));

  return SVN_NO_ERROR;
}
