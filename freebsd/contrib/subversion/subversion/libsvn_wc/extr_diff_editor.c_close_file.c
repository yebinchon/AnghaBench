
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


typedef int svn_error_t ;
struct TYPE_16__ {scalar_t__ kind; } ;
typedef TYPE_1__ const svn_checksum_t ;
struct file_baton_t {char* temp_file_path; int * pool; int name; int ignoring_ancestry; scalar_t__ repos_only; int pfb; int right_src; int left_src; int relpath; int local_abspath; TYPE_1__ const* base_checksum; int propchanges; int * base_props; scalar_t__ added; int result_digest; scalar_t__ skip; struct edit_baton_t* eb; struct dir_baton_t* parent_baton; } ;
struct edit_baton_t {scalar_t__ local_before_remote; TYPE_12__* processor; int cancel_baton; int cancel_func; int db; int anchor_abspath; scalar_t__ diff_pristine; } ;
struct dir_baton_t {int dummy; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_15__ {int (* file_changed ) (int ,int ,int ,char const*,char const*,int *,int *,int ,int *,int ,TYPE_12__*,int *) ;int (* file_deleted ) (int ,int ,char*,int *,int ,TYPE_12__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC_TRANSLATE_TO_NF ;
 int SVN_WC_TRANSLATE_USE_GLOBAL_TMP ;
 int TRUE ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int assert (TYPE_1__ const*) ;
 int handle_local_only (struct dir_baton_t*,int ,int *) ;
 int maybe_done (struct dir_baton_t*) ;
 int stub1 (int ,int ,char*,int *,int ,TYPE_12__*,int *) ;
 int stub2 (int ,int ,int ,char const*,char const*,int *,int *,int ,int *,int ,TYPE_12__*,int *) ;
 TYPE_1__ const* svn_checksum__from_digest_md5 (int ,int *) ;
 int svn_checksum_match (TYPE_1__ const*,TYPE_1__ const*) ;
 scalar_t__ svn_checksum_md5 ;
 int * svn_checksum_mismatch_err (TYPE_1__ const*,TYPE_1__ const*,int *,int ,int ) ;
 int svn_checksum_parse_hex (TYPE_1__ const**,scalar_t__,char const*,int *) ;
 int svn_dirent_local_style (int ,int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_prop__patch (int *,int ,int *) ;
 int svn_prop_diffs (int **,int *,int *,int *) ;
 int svn_wc__db_pristine_get_md5 (TYPE_1__ const**,int ,int ,TYPE_1__ const*,int *,int *) ;
 int svn_wc__db_pristine_get_path (char const**,int ,int ,TYPE_1__ const*,int *,int *) ;
 int svn_wc__db_read_pristine_info (int *,int *,int *,int *,int *,int *,TYPE_1__ const**,int *,int *,int **,int ,int ,int *,int *) ;
 int svn_wc__db_read_props (int **,int ,int ,int *,int *) ;
 int svn_wc__internal_translated_file (char const**,int ,int ,int ,int,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
close_file(void *file_baton,
           const char *expected_md5_digest,
           apr_pool_t *pool)
{
  struct file_baton_t *fb = file_baton;
  struct dir_baton_t *pb = fb->parent_baton;
  struct edit_baton_t *eb = fb->eb;
  apr_pool_t *scratch_pool = fb->pool;


  const char *repos_file;
  apr_hash_t *repos_props;

  if (fb->skip)
    {
      svn_pool_destroy(fb->pool);
      SVN_ERR(maybe_done(pb));
      return SVN_NO_ERROR;
    }

  if (expected_md5_digest != ((void*)0))
    {
      svn_checksum_t *expected_checksum;
      const svn_checksum_t *result_checksum;

      if (fb->temp_file_path)
        result_checksum = svn_checksum__from_digest_md5(fb->result_digest,
                                                        scratch_pool);
      else
        result_checksum = fb->base_checksum;

      SVN_ERR(svn_checksum_parse_hex(&expected_checksum, svn_checksum_md5,
                                     expected_md5_digest, scratch_pool));

      if (result_checksum->kind != svn_checksum_md5)
        SVN_ERR(svn_wc__db_pristine_get_md5(&result_checksum,
                                            eb->db, fb->local_abspath,
                                            result_checksum,
                                            scratch_pool, scratch_pool));

      if (!svn_checksum_match(expected_checksum, result_checksum))
        return svn_checksum_mismatch_err(
                            expected_checksum,
                            result_checksum,
                            pool,
                            _("Checksum mismatch for '%s'"),
                            svn_dirent_local_style(fb->local_abspath,
                                                   scratch_pool));
    }

  if (eb->local_before_remote && !fb->repos_only && !fb->ignoring_ancestry)
    SVN_ERR(handle_local_only(pb, fb->name, scratch_pool));

  {
    apr_hash_t *prop_base;

    if (fb->added)
      prop_base = apr_hash_make(scratch_pool);
    else
      prop_base = fb->base_props;


    repos_props = svn_prop__patch(prop_base, fb->propchanges, scratch_pool);

    repos_file = fb->temp_file_path;
    if (! repos_file)
      {
        assert(fb->base_checksum);
        SVN_ERR(svn_wc__db_pristine_get_path(&repos_file,
                                             eb->db, eb->anchor_abspath,
                                             fb->base_checksum,
                                             scratch_pool, scratch_pool));
      }
  }

  if (fb->repos_only)
    {
      SVN_ERR(eb->processor->file_deleted(fb->relpath,
                                          fb->left_src,
                                          fb->temp_file_path,
                                          repos_props,
                                          fb->pfb,
                                          eb->processor,
                                          scratch_pool));
    }
  else
    {

      apr_hash_t *local_props;
      apr_array_header_t *prop_changes;
      const char *localfile;




      if (eb->diff_pristine)
        {
          const svn_checksum_t *checksum;
          SVN_ERR(svn_wc__db_read_pristine_info(((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                                ((void*)0), &checksum, ((void*)0), ((void*)0),
                                                &local_props,
                                                eb->db, fb->local_abspath,
                                                scratch_pool, scratch_pool));
          assert(checksum);
          SVN_ERR(svn_wc__db_pristine_get_path(&localfile,
                                               eb->db, eb->anchor_abspath,
                                               checksum,
                                               scratch_pool, scratch_pool));
        }
      else
        {
          SVN_ERR(svn_wc__db_read_props(&local_props,
                                        eb->db, fb->local_abspath,
                                        scratch_pool, scratch_pool));


          SVN_ERR(svn_wc__internal_translated_file(
                    &localfile, fb->local_abspath, eb->db, fb->local_abspath,
                    SVN_WC_TRANSLATE_TO_NF | SVN_WC_TRANSLATE_USE_GLOBAL_TMP,
                    eb->cancel_func, eb->cancel_baton,
                    scratch_pool, scratch_pool));
        }

      SVN_ERR(svn_prop_diffs(&prop_changes, local_props, repos_props,
                             scratch_pool));




      SVN_ERR(eb->processor->file_changed(fb->relpath,
                                          fb->left_src,
                                          fb->right_src,
                                          repos_file ,
                                          localfile ,
                                          repos_props ,
                                          local_props ,
                                          TRUE ,
                                          prop_changes,
                                          fb->pfb,
                                          eb->processor,
                                          scratch_pool));
    }

  if (!eb->local_before_remote && !fb->repos_only && !fb->ignoring_ancestry)
    SVN_ERR(handle_local_only(pb, fb->name, scratch_pool));

  svn_pool_destroy(fb->pool);
  SVN_ERR(maybe_done(pb));
  return SVN_NO_ERROR;
}
