
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ depth; scalar_t__ versioned; } ;
typedef TYPE_2__ svn_wc_status3_t ;
struct TYPE_4__ {scalar_t__ depth; int repos_uuid; int repos_root_url; } ;
struct TYPE_6__ {TYPE_1__ s; scalar_t__ has_descendants; } ;
typedef TYPE_3__ svn_wc__internal_status_t ;
typedef int svn_error_t ;
struct edit_baton {char* anchor_abspath; scalar_t__ default_depth; int cancel_baton; int cancel_func; int wb; int * ignores; TYPE_3__* anchor_status; } ;
struct dir_baton {char const* local_abspath; scalar_t__ depth; int statii; void* excluded; int * ood_changed_author; int ood_kind; int repos_relpath; scalar_t__ ood_changed_date; int ood_changed_rev; struct dir_baton* parent_baton; struct edit_baton* edit_baton; int * name; int * pool; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int apr_hash_make (int *) ;
 struct dir_baton* apr_pcalloc (int *,int) ;
 int find_dir_repos_relpath (struct dir_baton*,int *) ;
 int get_dir_status (int *,char const*,void*,int ,int *,int ,int *,int *,int const*,scalar_t__,void*,void*,int ,int ,int ,int ,int *) ;
 int hash_stash ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 scalar_t__ svn_depth_infinity ;
 scalar_t__ svn_depth_unknown ;
 int * svn_dirent_basename (char const*,int *) ;
 char* svn_dirent_join (char*,char const*,int *) ;
 void* svn_hash_gets (int ,char const*) ;
 int svn_node_dir ;
 int * svn_pool_create (int *) ;

__attribute__((used)) static svn_error_t *
make_dir_baton(void **dir_baton,
               const char *path,
               struct edit_baton *edit_baton,
               struct dir_baton *parent_baton,
               apr_pool_t *result_pool)
{
  struct dir_baton *pb = parent_baton;
  struct edit_baton *eb = edit_baton;
  struct dir_baton *d;
  const char *local_abspath;
  const svn_wc__internal_status_t *status_in_parent;
  apr_pool_t *dir_pool;

  if (parent_baton)
    dir_pool = svn_pool_create(parent_baton->pool);
  else
    dir_pool = svn_pool_create(result_pool);

  d = apr_pcalloc(dir_pool, sizeof(*d));

  SVN_ERR_ASSERT(path || (! pb));


  if (pb)
    local_abspath = svn_dirent_join(eb->anchor_abspath, path, dir_pool);
  else
    local_abspath = eb->anchor_abspath;


  d->pool = dir_pool;
  d->local_abspath = local_abspath;
  d->name = path ? svn_dirent_basename(path, dir_pool) : ((void*)0);
  d->edit_baton = edit_baton;
  d->parent_baton = parent_baton;
  d->statii = apr_hash_make(dir_pool);
  d->ood_changed_rev = SVN_INVALID_REVNUM;
  d->ood_changed_date = 0;
  d->repos_relpath = find_dir_repos_relpath(d, dir_pool);
  d->ood_kind = svn_node_dir;
  d->ood_changed_author = ((void*)0);

  if (pb)
    {
      if (pb->excluded)
        d->excluded = TRUE;
      else if (pb->depth == svn_depth_immediates)
        d->depth = svn_depth_empty;
      else if (pb->depth == svn_depth_files || pb->depth == svn_depth_empty)
        d->excluded = TRUE;
      else if (pb->depth == svn_depth_unknown)


        d->depth = svn_depth_unknown;
      else
        d->depth = svn_depth_infinity;
    }
  else
    {
      d->depth = eb->default_depth;
    }



  if (pb)
    status_in_parent = svn_hash_gets(pb->statii, d->local_abspath);
  else
    status_in_parent = eb->anchor_status;

  if (status_in_parent
      && (status_in_parent->has_descendants)
      && (! d->excluded)
      && (d->depth == svn_depth_unknown
          || d->depth == svn_depth_infinity
          || d->depth == svn_depth_files
          || d->depth == svn_depth_immediates)
          )
    {
      const svn_wc_status3_t *this_dir_status;
      const apr_array_header_t *ignores = eb->ignores;

      SVN_ERR(get_dir_status(&eb->wb, local_abspath, TRUE,
                             status_in_parent->s.repos_root_url,
                             ((void*)0) ,
                             status_in_parent->s.repos_uuid,
                             ((void*)0),
                             ((void*)0) , ignores,
                             d->depth == svn_depth_files
                                      ? svn_depth_files
                                      : svn_depth_immediates,
                             TRUE, TRUE,
                             hash_stash, d->statii,
                             eb->cancel_func, eb->cancel_baton,
                             dir_pool));


      this_dir_status = svn_hash_gets(d->statii, d->local_abspath);
      if (this_dir_status && this_dir_status->versioned
          && (d->depth == svn_depth_unknown
              || d->depth > status_in_parent->s.depth))
        {
          d->depth = this_dir_status->depth;
        }
    }

  *dir_baton = d;
  return SVN_NO_ERROR;
}
