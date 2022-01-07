
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct file_baton {int * pool; int pfb; int propchanges; int * path_end_revision; scalar_t__ pristine_props; int * path_start_revision; int right_source; int left_source; int path; scalar_t__ added; scalar_t__ has_propchange; int result_md5_checksum; scalar_t__ skip; struct edit_baton* edit_baton; struct dir_baton* parent_baton; } ;
struct edit_baton {TYPE_1__* processor; scalar_t__ text_deltas; } ;
struct dir_baton {int dummy; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_3__ {int (* file_changed ) (int ,int ,int ,int *,int *,scalar_t__,int *,int ,int ,int ,TYPE_1__*,int *) ;int (* file_added ) (int ,int *,int ,int *,int *,int *,int *,int ,TYPE_1__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int get_file_from_ra (struct file_baton*,int ,int *) ;
 int release_dir (struct dir_baton*) ;
 int remove_non_prop_changes (scalar_t__,int ) ;
 int stub1 (int ,int *,int ,int *,int *,int *,int *,int ,TYPE_1__*,int *) ;
 int stub2 (int ,int ,int ,int *,int *,scalar_t__,int *,int ,int ,int ,TYPE_1__*,int *) ;
 int svn_checksum_match (int *,int ) ;
 int svn_checksum_md5 ;
 int svn_checksum_mismatch_err (int *,int ,int *,int ,int ) ;
 int svn_checksum_parse_hex (int **,int ,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_pool_destroy (int *) ;
 int * svn_prop__patch (scalar_t__,int ,int *) ;

__attribute__((used)) static svn_error_t *
close_file(void *file_baton,
           const char *expected_md5_digest,
           apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  struct dir_baton *pb = fb->parent_baton;
  struct edit_baton *eb = fb->edit_baton;
  apr_pool_t *scratch_pool;


  if (fb->skip)
    {
      svn_pool_destroy(fb->pool);
      SVN_ERR(release_dir(pb));
      return SVN_NO_ERROR;
    }

  scratch_pool = fb->pool;

  if (expected_md5_digest && eb->text_deltas)
    {
      svn_checksum_t *expected_md5_checksum;

      SVN_ERR(svn_checksum_parse_hex(&expected_md5_checksum, svn_checksum_md5,
                                     expected_md5_digest, scratch_pool));

      if (!svn_checksum_match(expected_md5_checksum, fb->result_md5_checksum))
        return svn_error_trace(svn_checksum_mismatch_err(
                                      expected_md5_checksum,
                                      fb->result_md5_checksum,
                                      pool,
                                      _("Checksum mismatch for '%s'"),
                                      fb->path));
    }

  if (fb->added || fb->path_end_revision || fb->has_propchange)
    {
      apr_hash_t *right_props;

      if (!fb->added && !fb->pristine_props)
        {


          SVN_ERR(get_file_from_ra(fb, TRUE, scratch_pool));
        }

      if (fb->pristine_props)
        remove_non_prop_changes(fb->pristine_props, fb->propchanges);

      right_props = svn_prop__patch(fb->pristine_props, fb->propchanges,
                                    fb->pool);

      if (fb->added)
        SVN_ERR(eb->processor->file_added(fb->path,
                                          ((void*)0) ,
                                          fb->right_source,
                                          ((void*)0) ,
                                          fb->path_end_revision,
                                          ((void*)0) ,
                                          right_props,
                                          fb->pfb,
                                          eb->processor,
                                          fb->pool));
      else
        SVN_ERR(eb->processor->file_changed(fb->path,
                                            fb->left_source,
                                            fb->right_source,
                                            fb->path_end_revision
                                                    ? fb->path_start_revision
                                                    : ((void*)0),
                                            fb->path_end_revision,
                                            fb->pristine_props,
                                            right_props,
                                            (fb->path_end_revision != ((void*)0)),
                                            fb->propchanges,
                                            fb->pfb,
                                            eb->processor,
                                            fb->pool));
    }

  svn_pool_destroy(fb->pool);

  SVN_ERR(release_dir(pb));

  return SVN_NO_ERROR;
}
