
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct file_baton_t {int pool; int properties; int local_abspath; int digest; struct dir_baton_t* pb; struct edit_baton_t* eb; } ;
struct edit_baton_t {int notify_baton; int notify_func; int wc_ctx; } ;
struct dir_baton_t {int dummy; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int ensure_added (struct dir_baton_t*,int ) ;
 int maybe_done (struct dir_baton_t*) ;
 int * svn_checksum__from_digest_md5 (int ,int ) ;
 int svn_checksum_match (int *,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_mismatch_err (int *,int *,int ,int ,int ) ;
 int svn_checksum_parse_hex (int **,int ,char const*,int ) ;
 int svn_dirent_local_style (int ,int ) ;
 int * svn_error_trace (int ) ;
 int svn_pool_destroy (int ) ;
 int svn_wc_add_from_disk3 (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
file_close(void *file_baton,
           const char *text_checksum,
           apr_pool_t *scratch_pool)
{
  struct file_baton_t *fb = file_baton;
  struct edit_baton_t *eb = fb->eb;
  struct dir_baton_t *pb = fb->pb;

  SVN_ERR(ensure_added(pb, fb->pool));

  if (text_checksum)
    {
      svn_checksum_t *expected_checksum;
      svn_checksum_t *actual_checksum;

      SVN_ERR(svn_checksum_parse_hex(&expected_checksum, svn_checksum_md5,
                                     text_checksum, fb->pool));
      actual_checksum = svn_checksum__from_digest_md5(fb->digest, fb->pool);

      if (! svn_checksum_match(expected_checksum, actual_checksum))
        return svn_error_trace(
                    svn_checksum_mismatch_err(expected_checksum,
                                              actual_checksum,
                                              fb->pool,
                                         _("Checksum mismatch for '%s'"),
                                              svn_dirent_local_style(
                                                    fb->local_abspath,
                                                    fb->pool)));
    }

  SVN_ERR(svn_wc_add_from_disk3(eb->wc_ctx, fb->local_abspath, fb->properties,
                                TRUE ,
                                eb->notify_func, eb->notify_baton,
                                fb->pool));

  svn_pool_destroy(fb->pool);
  SVN_ERR(maybe_done(pb));

  return SVN_NO_ERROR;
}
