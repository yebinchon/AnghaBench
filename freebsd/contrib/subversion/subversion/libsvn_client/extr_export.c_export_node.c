
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_27__ {scalar_t__ node_status; scalar_t__ kind; char* changed_author; int repos_root_url; int repos_relpath; int changed_rev; int changed_date; scalar_t__ file_external; } ;
typedef TYPE_2__ svn_wc_status3_t ;
struct TYPE_28__ {scalar_t__ kind; } ;
typedef TYPE_3__ svn_wc_notify_t ;
typedef int svn_wc_context_t ;
typedef int svn_subst_eol_style_t ;
struct TYPE_29__ {int data; } ;
typedef TYPE_4__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_30__ {int apr_err; } ;
typedef TYPE_5__ svn_error_t ;
typedef void* svn_boolean_t ;
struct export_info_baton {char const* origin_abspath; int notify_baton; int (* notify_func ) (int ,TYPE_3__*,int *) ;int ignore_keywords; int native_eol; TYPE_1__* revision; int overwrite; void* exported; int to_path; int * wc_ctx; } ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_31__ {int protection; } ;
typedef TYPE_6__ apr_finfo_t ;
typedef int apr_fileperms_t ;
struct TYPE_26__ {scalar_t__ kind; } ;


 int APR_FINFO_PROT ;
 int APR_OS_DEFAULT ;
 int APR_STATUS_IS_EEXIST (int ) ;
 void* FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int SVN_ERR_W (TYPE_5__*,char*) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_5__* SVN_NO_ERROR ;
 int SVN_PROP_EOL_STYLE ;
 int SVN_PROP_EXECUTABLE ;
 int SVN_PROP_KEYWORDS ;
 int SVN_PROP_SPECIAL ;
 void* TRUE ;
 char* _ (char*) ;
 scalar_t__ apr_hash_count (int *) ;
 int apr_psprintf (int *,char*,int ,char const*) ;
 int get_eol_style (int *,char const**,int ,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int stub1 (int ,TYPE_3__*,int *) ;
 int stub2 (int ,TYPE_3__*,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 char* svn_dirent_join (int ,int ,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_dirent_skip_ancestor (char const*,char const*) ;
 int svn_error_clear (TYPE_5__*) ;
 TYPE_5__* svn_error_compose_create (TYPE_5__*,int ) ;
 TYPE_5__* svn_error_createf (int ,int *,char*,int ) ;
 TYPE_5__* svn_error_trace (TYPE_5__*) ;
 TYPE_4__* svn_hash_gets (int *,int ) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 TYPE_5__* svn_io_dir_make (char const*,int ,int *) ;
 int svn_io_file_affected_time (int *,char const*,int *) ;
 int svn_io_file_del_none ;
 int svn_io_file_rename2 (char const*,char const*,void*,int *) ;
 int svn_io_remove_file2 (char const*,void*,int *) ;
 TYPE_5__* svn_io_set_file_affected_time (int ,char const*,int *) ;
 TYPE_5__* svn_io_set_file_executable (char const*,void*,void*,int *) ;
 int svn_io_stat (TYPE_6__*,char const*,int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_unknown ;
 scalar_t__ svn_opt_revision_working ;
 char* svn_path_url_add_component2 (int ,int ,int *) ;
 TYPE_5__* svn_stream_copy3 (int *,int *,int *,int *,int *) ;
 int svn_stream_open_unique (int **,char const**,int ,int ,int *,int *) ;
 int svn_subst_build_keywords3 (int **,int ,int ,char const*,int ,int ,char const*,int *) ;
 int svn_subst_create_specialfile (int **,char const*,int *,int *) ;
 int svn_subst_read_specialfile (int **,char const*,int *,int *) ;
 int * svn_subst_stream_translated (int *,char const*,void*,int *,int,int *) ;
 TYPE_3__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_get_pristine_contents2 (int **,int *,char const*,int *,int *) ;
 int svn_wc_get_pristine_props (int **,int *,char const*,int *,int *) ;
 int svn_wc_notify_update_add ;
 int svn_wc_prop_list2 (int **,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc_status_deleted ;
 scalar_t__ svn_wc_status_normal ;

__attribute__((used)) static svn_error_t *
export_node(void *baton,
            const char *local_abspath,
            const svn_wc_status3_t *status,
            apr_pool_t *scratch_pool)
{
  struct export_info_baton *eib = baton;
  svn_wc_context_t *wc_ctx = eib->wc_ctx;
  apr_hash_t *kw = ((void*)0);
  svn_subst_eol_style_t style;
  apr_hash_t *props;
  svn_string_t *eol_style, *keywords, *executable, *special;
  const char *eol = ((void*)0);
  svn_boolean_t local_mod = FALSE;
  apr_time_t tm;
  svn_stream_t *source;
  svn_stream_t *dst_stream;
  const char *dst_tmp;
  svn_error_t *err;

  const char *to_abspath = svn_dirent_join(
                                eib->to_path,
                                svn_dirent_skip_ancestor(eib->origin_abspath,
                                                         local_abspath),
                                scratch_pool);

  eib->exported = TRUE;




  if (eib->revision->kind == svn_opt_revision_working
      && status->node_status == svn_wc_status_deleted)
    return SVN_NO_ERROR;

  if (status->kind == svn_node_dir)
    {
      apr_fileperms_t perm = APR_OS_DEFAULT;
      if (eib->revision->kind == svn_opt_revision_working)
        {
          apr_finfo_t finfo;
          SVN_ERR(svn_io_stat(&finfo, local_abspath, APR_FINFO_PROT,
                              scratch_pool));
          perm = finfo.protection;
        }

      err = svn_io_dir_make(to_abspath, perm, scratch_pool);
      if (err)
        {
          if (! APR_STATUS_IS_EEXIST(err->apr_err))
            return svn_error_trace(err);
          if (! eib->overwrite)
            SVN_ERR_W(err, _("Destination directory exists, and will not be "
                             "overwritten unless forced"));
          else
            svn_error_clear(err);
        }

      if (eib->notify_func
          && (strcmp(eib->origin_abspath, local_abspath) != 0))
        {
          svn_wc_notify_t *notify =
              svn_wc_create_notify(to_abspath,
                                   svn_wc_notify_update_add, scratch_pool);

          notify->kind = svn_node_dir;
          (eib->notify_func)(eib->notify_baton, notify, scratch_pool);
        }

      return SVN_NO_ERROR;
    }
  else if (status->kind != svn_node_file)
    {
      if (strcmp(eib->origin_abspath, local_abspath) != 0)
        return SVN_NO_ERROR;

      return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                               _("The node '%s' was not found."),
                               svn_dirent_local_style(local_abspath,
                                                      scratch_pool));
    }



  if (status->file_external && strcmp(eib->origin_abspath, local_abspath) != 0)
    return SVN_NO_ERROR;


  if (strcmp(local_abspath, eib->origin_abspath) == 0)
    {
      svn_node_kind_t to_kind;

      SVN_ERR(svn_io_check_path(to_abspath, &to_kind, scratch_pool));

      if ((to_kind == svn_node_file || to_kind == svn_node_unknown)
          && !eib->overwrite)
        return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                                 _("Destination file '%s' exists, and "
                                   "will not be overwritten unless forced"),
                                 svn_dirent_local_style(to_abspath,
                                                        scratch_pool));
      else if (to_kind == svn_node_dir)
        return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                                 _("Destination '%s' exists. Cannot "
                                   "overwrite directory with non-directory"),
                                 svn_dirent_local_style(to_abspath,
                                                        scratch_pool));
    }

  if (eib->revision->kind != svn_opt_revision_working)
    {
      SVN_ERR(svn_wc_get_pristine_contents2(&source, wc_ctx, local_abspath,
                                            scratch_pool, scratch_pool));
      if (source == ((void*)0))
        return SVN_NO_ERROR;

      SVN_ERR(svn_wc_get_pristine_props(&props, wc_ctx, local_abspath,
                                        scratch_pool, scratch_pool));
    }
  else
    {


      SVN_ERR(svn_subst_read_specialfile(&source, local_abspath, scratch_pool,
                                         scratch_pool));

      SVN_ERR(svn_wc_prop_list2(&props, wc_ctx, local_abspath, scratch_pool,
                                scratch_pool));
      if (status->node_status != svn_wc_status_normal)
        local_mod = TRUE;
    }


  special = svn_hash_gets(props, SVN_PROP_SPECIAL);
  if (special != ((void*)0))
    {



      SVN_ERR(svn_subst_create_specialfile(&dst_stream, to_abspath,
                                           scratch_pool, scratch_pool));
      return svn_error_trace(
        svn_stream_copy3(source, dst_stream, ((void*)0), ((void*)0), scratch_pool));
    }


  eol_style = svn_hash_gets(props, SVN_PROP_EOL_STYLE);
  keywords = svn_hash_gets(props, SVN_PROP_KEYWORDS);
  executable = svn_hash_gets(props, SVN_PROP_EXECUTABLE);

  if (eol_style)
    SVN_ERR(get_eol_style(&style, &eol, eol_style->data, eib->native_eol));

  if (local_mod)
    {


      SVN_ERR(svn_io_file_affected_time(&tm, local_abspath, scratch_pool));
    }
  else
    {
      tm = status->changed_date;
    }

  if (keywords)
    {
      svn_revnum_t changed_rev = status->changed_rev;
      const char *suffix;
      const char *url = svn_path_url_add_component2(status->repos_root_url,
                                                    status->repos_relpath,
                                                    scratch_pool);
      const char *author = status->changed_author;
      if (local_mod)
        {




          suffix = "M";
          author = _("(local)");
        }
      else
        {
          suffix = "";
        }

      SVN_ERR(svn_subst_build_keywords3(&kw, keywords->data,
                                        apr_psprintf(scratch_pool, "%ld%s",
                                                     changed_rev, suffix),
                                        url, status->repos_root_url, tm,
                                        author, scratch_pool));
    }



  SVN_ERR(svn_stream_open_unique(&dst_stream, &dst_tmp,
                                 svn_dirent_dirname(to_abspath, scratch_pool),
                                 svn_io_file_del_none, scratch_pool,
                                 scratch_pool));



  if (eol || (kw && (apr_hash_count(kw) > 0)))
    dst_stream = svn_subst_stream_translated(dst_stream,
                                             eol,
                                             FALSE ,
                                             kw,
                                             ! eib->ignore_keywords ,
                                             scratch_pool);


  err = svn_stream_copy3(source, dst_stream, ((void*)0), ((void*)0), scratch_pool);

  if (!err && executable)
    err = svn_io_set_file_executable(dst_tmp, TRUE, FALSE, scratch_pool);

  if (!err)
    err = svn_io_set_file_affected_time(tm, dst_tmp, scratch_pool);

  if (err)
    return svn_error_compose_create(err, svn_io_remove_file2(dst_tmp, FALSE,
                                                             scratch_pool));


  SVN_ERR(svn_io_file_rename2(dst_tmp, to_abspath, FALSE, scratch_pool));

  if (eib->notify_func)
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(to_abspath,
                                      svn_wc_notify_update_add, scratch_pool);
      notify->kind = svn_node_file;
      (eib->notify_func)(eib->notify_baton, notify, scratch_pool);
    }

  return SVN_NO_ERROR;
}
