
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_3__ {int value; int name; } ;
typedef TYPE_1__ svn_prop_t ;
typedef int svn_error_t ;
typedef void* svn_boolean_t ;
struct file_baton {void* already_notified; void* add_existed; void* shadowed; int local_abspath; int edit_conflict; int pool; int new_repos_relpath; int old_revision; int old_repos_relpath; struct edit_baton* edit_baton; scalar_t__ local_prop_mods; scalar_t__ adding_file; int edited; int propchanges; scalar_t__ skip_this; } ;
struct edit_baton {int db; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 void* FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_SPECIAL ;
 void* TRUE ;
 TYPE_1__* apr_array_push (int ) ;
 int apr_pstrdup (int ,char const*) ;
 int complete_conflict (int ,struct edit_baton*,int ,int ,int ,int ,int ,int ,int *,int ,int *) ;
 int do_notification (struct edit_baton*,int ,int ,int ,int *) ;
 int mark_file_edited (struct file_baton*,int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int * svn_hash_gets (int *,int ) ;
 int svn_node_file ;
 scalar_t__ svn_prop_regular_kind ;
 scalar_t__ svn_property_kind2 (char const*) ;
 int svn_string_dup (int const*,int ) ;
 void* svn_tristate_false ;
 void* svn_tristate_true ;
 int svn_wc__conflict_skel_add_tree_conflict (int ,int ,int ,int ,int ,int *,int ,int *) ;
 int svn_wc__conflict_skel_create (int ) ;
 int svn_wc__db_base_get_props (int **,int ,int ,int *,int *) ;
 int svn_wc__db_op_make_copy (int ,int ,int ,int *,int *) ;
 int svn_wc__internal_file_modified_p (void**,int ,int ,void*,int *) ;
 int svn_wc_conflict_action_replace ;
 int svn_wc_conflict_reason_edited ;
 int svn_wc_notify_tree_conflict ;

__attribute__((used)) static svn_error_t *
change_file_prop(void *file_baton,
                 const char *name,
                 const svn_string_t *value,
                 apr_pool_t *scratch_pool)
{
  struct file_baton *fb = file_baton;
  svn_prop_t *propchange;

  if (fb->skip_this)
    return SVN_NO_ERROR;


  propchange = apr_array_push(fb->propchanges);
  propchange->name = apr_pstrdup(fb->pool, name);
  propchange->value = svn_string_dup(value, fb->pool);

  if (!fb->edited && svn_property_kind2(name) == svn_prop_regular_kind)
    SVN_ERR(mark_file_edited(fb, scratch_pool));

  if (! fb->shadowed
      && strcmp(name, SVN_PROP_SPECIAL) == 0)
    {
      struct edit_baton *eb = fb->edit_baton;
      svn_boolean_t modified = FALSE;
      svn_boolean_t becomes_symlink;
      svn_boolean_t was_symlink;



      becomes_symlink = (value != ((void*)0));

      if (fb->adding_file)
        was_symlink = becomes_symlink;
      else
        {
          apr_hash_t *props;



          SVN_ERR(svn_wc__db_base_get_props(&props, eb->db,
                                            fb->local_abspath,
                                            scratch_pool, scratch_pool));

          was_symlink = ((props
                              && svn_hash_gets(props, SVN_PROP_SPECIAL) != ((void*)0))
                              ? svn_tristate_true
                              : svn_tristate_false);
        }

      if (was_symlink != becomes_symlink)
        {



          if (fb->local_prop_mods)
            modified = TRUE;
          else
            SVN_ERR(svn_wc__internal_file_modified_p(&modified, eb->db,
                                                     fb->local_abspath,
                                                     FALSE, scratch_pool));
        }

      if (modified)
        {
          if (!fb->edit_conflict)
            fb->edit_conflict = svn_wc__conflict_skel_create(fb->pool);

          SVN_ERR(svn_wc__conflict_skel_add_tree_conflict(
                                     fb->edit_conflict,
                                     eb->db, fb->local_abspath,
                                     svn_wc_conflict_reason_edited,
                                     svn_wc_conflict_action_replace,
                                     ((void*)0),
                                     fb->pool, scratch_pool));

          SVN_ERR(complete_conflict(fb->edit_conflict, fb->edit_baton,
                                    fb->local_abspath, fb->old_repos_relpath,
                                    fb->old_revision, fb->new_repos_relpath,
                                    svn_node_file, svn_node_file,
                                    ((void*)0), fb->pool, scratch_pool));




          SVN_ERR(svn_wc__db_op_make_copy(eb->db, fb->local_abspath,
                                          fb->edit_conflict, ((void*)0),
                                          scratch_pool));

          do_notification(eb, fb->local_abspath, svn_node_file,
                          svn_wc_notify_tree_conflict, scratch_pool);



          fb->shadowed = TRUE;
          fb->add_existed = FALSE;
          fb->already_notified = TRUE;
      }
    }

  return SVN_NO_ERROR;
}
