
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_opt_revision_t ;
typedef int svn_info_receiver_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
struct TYPE_4__ {int wc_ctx; } ;
typedef TYPE_1__ svn_client_ctx_t ;
struct info_to_relpath_baton {char const* anchor_relpath; char const* anchor_abspath; int wc_ctx; void* info_baton; int info_receiver; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int info_receiver_relpath_wrapper ;
 int svn_client_info3 (char const*,int const*,int const*,int ,int ,int ,int const*,int ,struct info_to_relpath_baton*,TYPE_1__*,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_path_is_url (char const*) ;

svn_error_t *
svn_client_info2(const char *path_or_url,
                 const svn_opt_revision_t *peg_revision,
                 const svn_opt_revision_t *revision,
                 svn_info_receiver_t receiver,
                 void *receiver_baton,
                 svn_depth_t depth,
                 const apr_array_header_t *changelists,
                 svn_client_ctx_t *ctx,
                 apr_pool_t *pool)
{
  struct info_to_relpath_baton rb;
  const char *abspath_or_url = path_or_url;

  rb.anchor_relpath = ((void*)0);
  rb.info_receiver = receiver;
  rb.info_baton = receiver_baton;
  rb.wc_ctx = ctx->wc_ctx;

  if (!svn_path_is_url(path_or_url))
    {
      SVN_ERR(svn_dirent_get_absolute(&abspath_or_url, path_or_url, pool));
      rb.anchor_abspath = abspath_or_url;
      rb.anchor_relpath = path_or_url;
    }

  SVN_ERR(svn_client_info3(abspath_or_url,
                           peg_revision,
                           revision,
                           depth,
                           FALSE, TRUE,
                           changelists,
                           info_receiver_relpath_wrapper,
                           &rb,
                           ctx,
                           pool));

  return SVN_NO_ERROR;
}
