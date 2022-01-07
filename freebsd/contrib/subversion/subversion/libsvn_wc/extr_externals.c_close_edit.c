
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct edit_baton {int notify_baton; int notify_func; int * target_revision; int repos_uuid; int repos_root_url; int new_repos_relpath; int local_abspath; int db; int iprops; int file_closed; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * apr_hash_make (int *) ;
 int svn_depth_infinity ;
 int svn_hash_sets (int *,int ,int ) ;
 int svn_wc__db_op_bump_revisions_post_update (int ,int ,int ,int ,int ,int ,int ,int *,int *,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
close_edit(void *edit_baton,
           apr_pool_t *pool)
{
  struct edit_baton *eb = edit_baton;

  if (!eb->file_closed)
    {
      apr_hash_t *wcroot_iprops = ((void*)0);







      if (eb->iprops)
        {
          wcroot_iprops = apr_hash_make(pool);
          svn_hash_sets(wcroot_iprops, eb->local_abspath, eb->iprops);
        }

      SVN_ERR(svn_wc__db_op_bump_revisions_post_update(eb->db,
                                                       eb->local_abspath,
                                                       svn_depth_infinity,
                                                       eb->new_repos_relpath,
                                                       eb->repos_root_url,
                                                       eb->repos_uuid,
                                                       *eb->target_revision,
                                                       apr_hash_make(pool)
                                                                             ,
                                                       wcroot_iprops,
                                                       TRUE ,
                                                       eb->notify_func,
                                                       eb->notify_baton,
                                                       pool));
    }

  return SVN_NO_ERROR;
}
