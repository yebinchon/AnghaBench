
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* repos_root_url; int node_status; char const* changelist; char* moved_from_abspath; scalar_t__ revision; char* repos_relpath; int const text_status; int const prop_status; int kind; scalar_t__ copied; int lock; scalar_t__ switched; scalar_t__ file_external; scalar_t__ conflicted; } ;
typedef TYPE_1__ svn_wc_status3_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,int ,int *) ;
typedef int svn_wc_context_t ;
typedef scalar_t__ svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_client__committables_t ;
typedef int svn_boolean_t ;
struct harvest_baton {char const* commit_relpath; int just_locked; int check_url_baton; int (* check_url_func ) (int ,scalar_t__*,int ,scalar_t__,int *) ;int * result_pool; int * skip_below_abspath; int * danglers; int * changelists; scalar_t__ lock_tokens; int root_abspath; int * wc_ctx; void* notify_baton; int (* notify_func ) (void*,int ,int *) ;int * committables; } ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
typedef int apr_byte_t ;


 int FALSE ;
 int SVN_CLIENT_COMMIT_ITEM_ADD ;
 int SVN_CLIENT_COMMIT_ITEM_DELETE ;
 int SVN_CLIENT_COMMIT_ITEM_IS_COPY ;
 int SVN_CLIENT_COMMIT_ITEM_LOCK_TOKEN ;
 int SVN_CLIENT_COMMIT_ITEM_MOVED_HERE ;
 int SVN_CLIENT_COMMIT_ITEM_PROP_MODS ;
 int SVN_CLIENT_COMMIT_ITEM_TEXT_MODS ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int SVN_ERR_NODE_UNEXPECTED_KIND ;
 int SVN_ERR_WC_FOUND_CONFLICT ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ SVN_INVALID_REVNUM ;
 scalar_t__ SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int add_committable (int *,char const*,int ,char const*,char const*,scalar_t__,char const*,scalar_t__,char const*,int,scalar_t__,int ,int *,int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_set (scalar_t__,void const*,int ,void*) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int * apr_pstrdup (int *,char const*) ;
 int harvest_not_present_for_copy (int *,char const*,int *,char const*,char const*,int (*) (int ,scalar_t__*,int ,scalar_t__,int *),int ,int *,int *) ;
 scalar_t__ look_up_committable (int *,char const*,int *) ;
 scalar_t__ strcmp (int ,char const*) ;
 int stub1 (int ,scalar_t__*,int ,scalar_t__,int *) ;
 int svn_dirent_basename (char const*,int *) ;
 char* svn_dirent_dirname (char const*,int *) ;
 scalar_t__ svn_dirent_is_ancestor (int *,char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_dirent_skip_ancestor (int ,char const*) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_hash_gets (int *,char const*) ;
 int svn_hash_sets (int *,int *,int *) ;
 int svn_node_dir ;
 int svn_node_file ;
 scalar_t__ svn_node_none ;
 int svn_node_unknown ;
 int svn_path_url_add_component2 (char const*,char*,int *) ;
 char* svn_relpath_join (char const*,int ,int *) ;
 int svn_wc__node_get_base (int *,scalar_t__*,char const**,int *,int *,int *,int *,char*,int,int *,int *) ;
 int svn_wc__node_get_commit_status (int*,int*,int*,int*,scalar_t__*,scalar_t__*,char const**,int *,char const*,int *,int *) ;
 int svn_wc__node_get_lock_tokens_recursive (int **,int *,char const*,int *,int *) ;
 int svn_wc__node_get_origin (int*,int *,int *,int *,int *,int *,char const**,int *,char const*,int,int *,int *) ;
 int svn_wc__node_is_added (int*,int *,char const*,int *) ;
 int svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_failed_conflict ;
 int svn_wc_notify_failed_missing ;
 int svn_wc_notify_failed_obstruction ;


 int svn_wc_status_missing ;


 int svn_wc_status_obstructed ;


__attribute__((used)) static svn_error_t *
harvest_status_callback(void *status_baton,
                        const char *local_abspath,
                        const svn_wc_status3_t *status,
                        apr_pool_t *scratch_pool)
{
  apr_byte_t state_flags = 0;
  svn_revnum_t node_rev;
  const char *cf_relpath = ((void*)0);
  svn_revnum_t cf_rev = SVN_INVALID_REVNUM;
  svn_boolean_t matches_changelists;
  svn_boolean_t is_added;
  svn_boolean_t is_deleted;
  svn_boolean_t is_replaced;
  svn_boolean_t is_op_root;
  svn_revnum_t original_rev;
  const char *original_relpath;
  svn_boolean_t copy_mode;

  struct harvest_baton *baton = status_baton;
  svn_boolean_t is_harvest_root =
                (strcmp(baton->root_abspath, local_abspath) == 0);
  svn_client__committables_t *committables = baton->committables;
  const char *repos_root_url = status->repos_root_url;
  const char *commit_relpath = ((void*)0);
  svn_boolean_t copy_mode_root = (baton->commit_relpath && is_harvest_root);
  svn_boolean_t just_locked = baton->just_locked;
  apr_hash_t *changelists = baton->changelists;
  svn_wc_notify_func2_t notify_func = baton->notify_func;
  void *notify_baton = baton->notify_baton;
  svn_wc_context_t *wc_ctx = baton->wc_ctx;
  apr_pool_t *result_pool = baton->result_pool;
  const char *moved_from_abspath = ((void*)0);

  if (baton->commit_relpath)
    commit_relpath = svn_relpath_join(
                        baton->commit_relpath,
                        svn_dirent_skip_ancestor(baton->root_abspath,
                                                 local_abspath),
                        scratch_pool);

  copy_mode = (commit_relpath != ((void*)0));

  if (baton->skip_below_abspath
      && svn_dirent_is_ancestor(baton->skip_below_abspath, local_abspath))
    {
      return SVN_NO_ERROR;
    }
  else
    baton->skip_below_abspath = ((void*)0);


  switch (status->node_status)
    {
      case 128:
      case 131:
      case 132:
      case 130:




        if (is_harvest_root)
          return svn_error_createf(
                       SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                       _("'%s' is not under version control"),
                       svn_dirent_local_style(local_abspath, scratch_pool));
        return SVN_NO_ERROR;
      case 129:







        if (!copy_mode && !status->conflicted
            && !(just_locked && status->lock))
          return SVN_NO_ERROR;
        break;
      default:

        break;
    }


  if (look_up_committable(committables, local_abspath, scratch_pool))
    return SVN_NO_ERROR;

  SVN_ERR_ASSERT((copy_mode && commit_relpath)
                 || (! copy_mode && ! commit_relpath));
  SVN_ERR_ASSERT((copy_mode_root && copy_mode) || ! copy_mode_root);


  matches_changelists = ((changelists == ((void*)0))
                         || (status->changelist != ((void*)0)
                             && svn_hash_gets(changelists, status->changelist)
                                != ((void*)0)));


  if (status->kind != svn_node_dir && ! matches_changelists)
    {
      return SVN_NO_ERROR;
    }




  if (status->conflicted && matches_changelists)
    {
      if (notify_func != ((void*)0))
        {
          notify_func(notify_baton,
                      svn_wc_create_notify(local_abspath,
                                           svn_wc_notify_failed_conflict,
                                           scratch_pool),
                      scratch_pool);
        }

      return svn_error_createf(
            SVN_ERR_WC_FOUND_CONFLICT, ((void*)0),
            _("Aborting commit: '%s' remains in conflict"),
            svn_dirent_local_style(local_abspath, scratch_pool));
    }
  else if (status->node_status == svn_wc_status_obstructed)
    {



      if (notify_func != ((void*)0))
        {
          notify_func(notify_baton,
                      svn_wc_create_notify(local_abspath,
                                           svn_wc_notify_failed_obstruction,
                                           scratch_pool),
                      scratch_pool);
        }

      return svn_error_createf(
                    SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                    _("Node '%s' has unexpectedly changed kind"),
                    svn_dirent_local_style(local_abspath, scratch_pool));
    }

  if (status->conflicted && status->kind == svn_node_unknown)
    return SVN_NO_ERROR;




  SVN_ERR(svn_wc__node_get_commit_status(&is_added, &is_deleted,
                                         &is_replaced,
                                         &is_op_root,
                                         &node_rev,
                                         &original_rev, &original_relpath,
                                         wc_ctx, local_abspath,
                                         scratch_pool, scratch_pool));




  if (status->file_external && !is_harvest_root)
    {
      return SVN_NO_ERROR;
    }

  if (status->node_status == svn_wc_status_missing && matches_changelists)
    {

      if (is_added && is_op_root)
        {
          if (notify_func != ((void*)0))
            {
              notify_func(notify_baton,
                          svn_wc_create_notify(local_abspath,
                                               svn_wc_notify_failed_missing,
                                               scratch_pool),
                          scratch_pool);
            }
          return svn_error_createf(
             SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
             _("'%s' is scheduled for addition, but is missing"),
             svn_dirent_local_style(local_abspath, scratch_pool));
        }

      return SVN_NO_ERROR;
    }

  if (is_deleted && !is_op_root )
    return SVN_NO_ERROR;







  if (is_deleted || is_replaced)
    state_flags |= SVN_CLIENT_COMMIT_ITEM_DELETE;


  if (is_added && is_op_root)
    {

      state_flags |= SVN_CLIENT_COMMIT_ITEM_ADD;

      if (original_relpath)
        {

          state_flags |= SVN_CLIENT_COMMIT_ITEM_IS_COPY;
          cf_relpath = original_relpath;
          cf_rev = original_rev;

          if (status->moved_from_abspath && !copy_mode)
            {
              state_flags |= SVN_CLIENT_COMMIT_ITEM_MOVED_HERE;
              moved_from_abspath = status->moved_from_abspath;
            }
        }
    }


  else if (copy_mode
           && !(state_flags & SVN_CLIENT_COMMIT_ITEM_DELETE))
    {
      svn_revnum_t dir_rev = SVN_INVALID_REVNUM;
      const char *dir_repos_relpath = ((void*)0);

      if (!copy_mode_root && !is_added)
        SVN_ERR(svn_wc__node_get_base(((void*)0), &dir_rev, &dir_repos_relpath, ((void*)0),
                                      ((void*)0), ((void*)0),
                                      wc_ctx, svn_dirent_dirname(local_abspath,
                                                                 scratch_pool),
                                      FALSE ,
                                      scratch_pool, scratch_pool));

      if (copy_mode_root || status->switched || node_rev != dir_rev)
        {
          state_flags |= (SVN_CLIENT_COMMIT_ITEM_ADD
                          | SVN_CLIENT_COMMIT_ITEM_IS_COPY);

          if (status->copied)
            {

              cf_rev = original_rev;
              cf_relpath = original_relpath;
            }
          else
            {

              cf_rev = status->revision;
              cf_relpath = status->repos_relpath;
            }

          if (!copy_mode_root && !is_added && baton->check_url_func
              && dir_repos_relpath)
            {
              svn_node_kind_t me_kind;


              SVN_ERR(baton->check_url_func(
                            baton->check_url_baton, &me_kind,
                            svn_path_url_add_component2(repos_root_url,
                                        svn_relpath_join(dir_repos_relpath,
                                            svn_dirent_basename(local_abspath,
                                                                ((void*)0)),
                                            scratch_pool),
                                        scratch_pool),
                                        dir_rev, scratch_pool));
              if (me_kind != svn_node_none)
                state_flags |= SVN_CLIENT_COMMIT_ITEM_DELETE;
            }
        }
    }

  if (!(state_flags & SVN_CLIENT_COMMIT_ITEM_DELETE)
      || (state_flags & SVN_CLIENT_COMMIT_ITEM_ADD))
    {
      svn_boolean_t text_mod = FALSE;
      svn_boolean_t prop_mod = FALSE;

      if (status->kind == svn_node_file)
        {

          if ((state_flags & SVN_CLIENT_COMMIT_ITEM_ADD)
              && ! (state_flags & SVN_CLIENT_COMMIT_ITEM_IS_COPY))
            {
              text_mod = TRUE;
            }
          else
            text_mod = (status->text_status != 129);
        }

      prop_mod = (status->prop_status != 129
                  && status->prop_status != 130);


      if (text_mod)
        state_flags |= SVN_CLIENT_COMMIT_ITEM_TEXT_MODS;
      if (prop_mod)
        state_flags |= SVN_CLIENT_COMMIT_ITEM_PROP_MODS;
    }




  if (status->lock && baton->lock_tokens && (state_flags || just_locked))
    {
      state_flags |= SVN_CLIENT_COMMIT_ITEM_LOCK_TOKEN;
    }


  if (matches_changelists
      && state_flags)
    {

      SVN_ERR(add_committable(committables, local_abspath,
                              status->kind,
                              repos_root_url,
                              copy_mode
                                      ? commit_relpath
                                      : status->repos_relpath,
                              copy_mode
                                      ? SVN_INVALID_REVNUM
                                      : node_rev,
                              cf_relpath,
                              cf_rev,
                              moved_from_abspath,
                              state_flags,
                              baton->lock_tokens, status->lock,
                              result_pool, scratch_pool));
    }


  if (matches_changelists
      && (state_flags & SVN_CLIENT_COMMIT_ITEM_DELETE)
      && !copy_mode
      && SVN_IS_VALID_REVNUM(node_rev)
      && baton->lock_tokens)
    {
      apr_hash_t *local_relpath_tokens;
      apr_hash_index_t *hi;

      SVN_ERR(svn_wc__node_get_lock_tokens_recursive(
                  &local_relpath_tokens, wc_ctx, local_abspath,
                  result_pool, scratch_pool));


      for (hi = apr_hash_first(scratch_pool, local_relpath_tokens);
           hi;
           hi = apr_hash_next(hi))
        {
          const void *key;
          apr_ssize_t klen;
          void * val;

          apr_hash_this(hi, &key, &klen, &val);

          apr_hash_set(baton->lock_tokens, key, klen, val);
        }
    }






  if (matches_changelists
      && (is_harvest_root || baton->changelists)
      && state_flags
      && (is_added || (is_deleted && is_op_root && status->copied))
      && baton->danglers)
    {


      apr_hash_t *danglers = baton->danglers;
      svn_boolean_t parent_added;
      const char *parent_abspath = svn_dirent_dirname(local_abspath,
                                                      scratch_pool);



      if (look_up_committable(committables, parent_abspath, scratch_pool))
        parent_added = FALSE;
      else
        SVN_ERR(svn_wc__node_is_added(&parent_added, wc_ctx, parent_abspath,
                                      scratch_pool));

      if (parent_added)
        {
          const char *copy_root_abspath;
          svn_boolean_t parent_is_copy;




          SVN_ERR(svn_wc__node_get_origin(&parent_is_copy, ((void*)0), ((void*)0), ((void*)0),
                                          ((void*)0), ((void*)0), &copy_root_abspath,
                                          wc_ctx, parent_abspath,
                                          FALSE, scratch_pool, scratch_pool));

          if (parent_is_copy)
            parent_abspath = copy_root_abspath;

          if (!svn_hash_gets(danglers, parent_abspath))
            {
              svn_hash_sets(danglers, apr_pstrdup(result_pool, parent_abspath),
                            apr_pstrdup(result_pool, local_abspath));
            }
        }
    }

  if (is_deleted && !is_added)
    {

      if (status->kind == svn_node_dir)
        baton->skip_below_abspath = apr_pstrdup(baton->result_pool,
                                                local_abspath);
      return SVN_NO_ERROR;
    }




  if (copy_mode && !is_added && !is_deleted && status->kind == svn_node_dir)
    {
      SVN_ERR(harvest_not_present_for_copy(wc_ctx, local_abspath, committables,
                                           repos_root_url, commit_relpath,
                                           baton->check_url_func,
                                           baton->check_url_baton,
                                           result_pool, scratch_pool));
    }

  return SVN_NO_ERROR;
}
