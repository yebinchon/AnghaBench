
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_state_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct file_baton {scalar_t__ new_text_base_sha1_checksum; int local_abspath; int propchanges; int old_revision; int * original_checksum; scalar_t__ add_existed; scalar_t__ adding_file; int edit_obstructed; int obstruction_found; int shadowed; struct dir_baton* dir_baton; struct edit_baton* edit_baton; } ;
struct edit_baton {int cancel_baton; int cancel_func; int db; int diff3_cmd; int * target_revision; int ext_patterns; } ;
struct dir_baton {int local_abspath; } ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int SVN_WC_TRANSLATE_NO_OUTPUT_CLEANUP ;
 int SVN_WC_TRANSLATE_TO_NF ;
 scalar_t__ TRUE ;
 int svn_wc__get_translate_info (int *,int *,int **,int *,int ,int ,int *,scalar_t__,int *,int *) ;
 scalar_t__ svn_wc__has_magic_property (int ) ;
 int svn_wc__internal_file_modified_p (scalar_t__*,int ,int ,scalar_t__,int *) ;
 int svn_wc__internal_translated_file (char const**,int ,int ,int ,int,int ,int ,int *,int *) ;
 int svn_wc__perform_file_merge (int **,int **,scalar_t__*,int ,int ,int ,scalar_t__,int *,int *,int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int svn_wc_notify_state_changed ;
 int svn_wc_notify_state_conflicted ;
 int svn_wc_notify_state_merged ;
 int svn_wc_notify_state_unchanged ;

__attribute__((used)) static svn_error_t *
merge_file(svn_skel_t **work_items,
           svn_skel_t **conflict_skel,
           svn_boolean_t *install_pristine,
           const char **install_from,
           svn_wc_notify_state_t *content_state,
           struct file_baton *fb,
           apr_hash_t *actual_props,
           apr_time_t last_changed_date,
           apr_pool_t *result_pool,
           apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = fb->edit_baton;
  struct dir_baton *pb = fb->dir_baton;
  svn_boolean_t is_locally_modified;
  svn_boolean_t found_text_conflict = FALSE;

  SVN_ERR_ASSERT(! fb->shadowed
                 && ! fb->obstruction_found
                 && ! fb->edit_obstructed);
  *work_items = ((void*)0);
  *install_pristine = FALSE;
  *install_from = ((void*)0);
  if (fb->adding_file && !fb->add_existed)
    {
      is_locally_modified = FALSE;
    }
  else
    {






      SVN_ERR(svn_wc__internal_file_modified_p(&is_locally_modified,
                                               eb->db, fb->local_abspath,
                                               FALSE ,
                                               scratch_pool));
    }
  if (! is_locally_modified
      && fb->new_text_base_sha1_checksum)
    {
      *install_pristine = TRUE;
    }
  else if (fb->new_text_base_sha1_checksum)
    {



      SVN_ERR(svn_wc__perform_file_merge(work_items,
                                         conflict_skel,
                                         &found_text_conflict,
                                         eb->db,
                                         fb->local_abspath,
                                         pb->local_abspath,
                                         fb->new_text_base_sha1_checksum,
                                         fb->add_existed
                                                  ? ((void*)0)
                                                  : fb->original_checksum,
                                         actual_props,
                                         eb->ext_patterns,
                                         fb->old_revision,
                                         *eb->target_revision,
                                         fb->propchanges,
                                         eb->diff3_cmd,
                                         eb->cancel_func, eb->cancel_baton,
                                         result_pool, scratch_pool));
    }
  else
    {



      apr_hash_t *keywords;



      svn_boolean_t magic_props_changed;

      magic_props_changed = svn_wc__has_magic_property(fb->propchanges);

      SVN_ERR(svn_wc__get_translate_info(((void*)0), ((void*)0),
                                         &keywords,
                                         ((void*)0),
                                         eb->db, fb->local_abspath,
                                         actual_props, TRUE,
                                         scratch_pool, scratch_pool));
      if (magic_props_changed || keywords)
        {
          if (is_locally_modified)
            {
              const char *tmptext;



              SVN_ERR(svn_wc__internal_translated_file(
                        &tmptext, fb->local_abspath, eb->db, fb->local_abspath,
                        SVN_WC_TRANSLATE_TO_NF
                          | SVN_WC_TRANSLATE_NO_OUTPUT_CLEANUP,
                        eb->cancel_func, eb->cancel_baton,
                        result_pool, scratch_pool));
              *install_pristine = TRUE;
              *install_from = tmptext;
            }
          else
            {




              *install_pristine = TRUE;
            }
        }
    }



  if (found_text_conflict)
    *content_state = svn_wc_notify_state_conflicted;
  else if (fb->new_text_base_sha1_checksum)
    {
      if (is_locally_modified)
        *content_state = svn_wc_notify_state_merged;
      else
        *content_state = svn_wc_notify_state_changed;
    }
  else
    *content_state = svn_wc_notify_state_unchanged;

  return SVN_NO_ERROR;
}
