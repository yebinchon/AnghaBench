
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int (* svn_wc_status_func4_t ) (void*,char const*,TYPE_1__*,int *) ;
struct TYPE_8__ {int repos_node_status; } ;
struct TYPE_9__ {TYPE_1__ s; scalar_t__ has_descendants; } ;
typedef TYPE_2__ svn_wc__internal_status_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
struct status_baton {void* real_status_baton; int (* real_status_func ) (void*,char const*,TYPE_1__*,int *) ;} ;
struct edit_baton {void* status_baton; int (* status_func ) (void*,char const*,TYPE_1__*,int *) ;int get_all; int no_ignore; int cancel_baton; int cancel_func; int wb; int * ignores; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 char* apr_hash_this_key (int *) ;
 TYPE_2__* apr_hash_this_val (int *) ;
 int get_dir_status (int *,char const*,int ,char const*,char const*,char const*,int *,int *,int const*,int ,int ,int ,int (*) (void*,char const*,TYPE_1__*,int *),void*,int ,int ,int *) ;
 scalar_t__ is_sendable_status (TYPE_2__*,int ,int ) ;
 int mark_deleted (void*,char const*,TYPE_1__*,int *) ;
 int stub1 (void*,char const*,TYPE_1__*,int *) ;
 int svn_depth_infinity ;
 int svn_depth_unknown ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_wc_status_deleted ;

__attribute__((used)) static svn_error_t *
handle_statii(struct edit_baton *eb,
              const char *dir_repos_root_url,
              const char *dir_repos_relpath,
              const char *dir_repos_uuid,
              apr_hash_t *statii,
              svn_boolean_t dir_was_deleted,
              svn_depth_t depth,
              apr_pool_t *pool)
{
  const apr_array_header_t *ignores = eb->ignores;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = svn_pool_create(pool);
  svn_wc_status_func4_t status_func = eb->status_func;
  void *status_baton = eb->status_baton;
  struct status_baton sb;

  if (dir_was_deleted)
    {
      sb.real_status_func = eb->status_func;
      sb.real_status_baton = eb->status_baton;
      status_func = mark_deleted;
      status_baton = &sb;
    }


  for (hi = apr_hash_first(pool, statii); hi; hi = apr_hash_next(hi))
    {
      const char *local_abspath = apr_hash_this_key(hi);
      svn_wc__internal_status_t *status = apr_hash_this_val(hi);


      svn_pool_clear(iterpool);



      if (status->has_descendants
          && (depth == svn_depth_unknown
              || depth == svn_depth_infinity))
        {
          SVN_ERR(get_dir_status(&eb->wb,
                                 local_abspath, TRUE,
                                 dir_repos_root_url, dir_repos_relpath,
                                 dir_repos_uuid,
                                 ((void*)0),
                                 ((void*)0) ,
                                 ignores, depth, eb->get_all, eb->no_ignore,
                                 status_func, status_baton,
                                 eb->cancel_func, eb->cancel_baton,
                                 iterpool));
        }
      if (dir_was_deleted)
        status->s.repos_node_status = svn_wc_status_deleted;
      if (is_sendable_status(status, eb->no_ignore, eb->get_all))
        SVN_ERR((eb->status_func)(eb->status_baton, local_abspath, &status->s,
                                  iterpool));
    }


  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
