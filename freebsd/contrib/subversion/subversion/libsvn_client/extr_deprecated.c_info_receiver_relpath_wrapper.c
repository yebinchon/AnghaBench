
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_info_t ;
typedef int svn_error_t ;
typedef int svn_client_info2_t ;
struct info_to_relpath_baton {int info_baton; int (* info_receiver ) (int ,char const*,int *,int *) ;int wc_ctx; int anchor_abspath; scalar_t__ anchor_relpath; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int info_from_info2 (int **,int ,int const*,int *) ;
 int stub1 (int ,char const*,int *,int *) ;
 scalar_t__ svn_dirent_is_ancestor (int ,char const*) ;
 char* svn_dirent_join (scalar_t__,int ,int *) ;
 int svn_dirent_skip_ancestor (int ,char const*) ;

__attribute__((used)) static svn_error_t *
info_receiver_relpath_wrapper(void *baton,
                              const char *abspath_or_url,
                              const svn_client_info2_t *info2,
                              apr_pool_t *scratch_pool)
{
  struct info_to_relpath_baton *rb = baton;
  const char *path = abspath_or_url;
  svn_info_t *info;

  if (rb->anchor_relpath &&
      svn_dirent_is_ancestor(rb->anchor_abspath, abspath_or_url))
    {
      path = svn_dirent_join(rb->anchor_relpath,
                             svn_dirent_skip_ancestor(rb->anchor_abspath,
                                                      abspath_or_url),
                             scratch_pool);
    }

  SVN_ERR(info_from_info2(&info, rb->wc_ctx, info2, scratch_pool));

  SVN_ERR(rb->info_receiver(rb->info_baton,
                            path,
                            info,
                            scratch_pool));

  return SVN_NO_ERROR;
}
