
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int kind; } ;
typedef TYPE_3__ svn_wc_notify_t ;
typedef int svn_subst_eol_style_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct file_baton {struct edit_baton* edit_baton; int path; scalar_t__ date; int special; scalar_t__ executable_val; int tmppath; int author; int repos_root_url; int url; int revision; TYPE_2__* keywords_val; TYPE_1__* eol_style_val; int text_digest; int tmp_stream; } ;
struct edit_baton {int notify_baton; int (* notify_func ) (int ,TYPE_3__*,int *) ;int cancel_baton; int cancel_func; int native_eol; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int data; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int get_eol_style (int *,char const**,int ,int ) ;
 int stub1 (int ,TYPE_3__*,int *) ;
 int * svn_checksum__from_digest_md5 (int ,int *) ;
 int svn_checksum_match (int *,int *) ;
 int svn_checksum_md5 ;
 int * svn_checksum_mismatch_err (int *,int *,int *,int ,int ) ;
 int svn_checksum_parse_hex (int **,int ,char const*,int *) ;
 int svn_dirent_local_style (int ,int *) ;
 int svn_io_file_rename2 (int ,int ,int ,int *) ;
 int svn_io_remove_file2 (int ,int ,int *) ;
 int svn_io_set_file_affected_time (scalar_t__,int ,int *) ;
 int svn_io_set_file_executable (int ,int ,int ,int *) ;
 int svn_node_file ;
 int svn_stream_close (int ) ;
 int svn_subst_build_keywords3 (int **,int ,int ,int ,int ,scalar_t__,int ,int *) ;
 int svn_subst_copy_and_translate4 (int ,int ,char const*,int ,int *,int ,int ,int ,int ,int *) ;
 TYPE_3__* svn_wc_create_notify (int ,int ,int *) ;
 int svn_wc_notify_update_add ;

__attribute__((used)) static svn_error_t *
close_file(void *file_baton,
           const char *text_digest,
           apr_pool_t *pool)
{
  struct file_baton *fb = file_baton;
  struct edit_baton *eb = fb->edit_baton;
  svn_checksum_t *text_checksum;
  svn_checksum_t *actual_checksum;


  if (! fb->tmppath)
    return SVN_NO_ERROR;

  SVN_ERR(svn_stream_close(fb->tmp_stream));

  SVN_ERR(svn_checksum_parse_hex(&text_checksum, svn_checksum_md5, text_digest,
                                 pool));
  actual_checksum = svn_checksum__from_digest_md5(fb->text_digest, pool);




  if (!svn_checksum_match(text_checksum, actual_checksum))
    return svn_checksum_mismatch_err(text_checksum, actual_checksum, pool,
                                     _("Checksum mismatch for '%s'"),
                                     svn_dirent_local_style(fb->path, pool));

  if ((! fb->eol_style_val) && (! fb->keywords_val) && (! fb->special))
    {
      SVN_ERR(svn_io_file_rename2(fb->tmppath, fb->path, FALSE, pool));
    }
  else
    {
      svn_subst_eol_style_t style;
      const char *eol = ((void*)0);
      svn_boolean_t repair = FALSE;
      apr_hash_t *final_kw = ((void*)0);

      if (fb->eol_style_val)
        {
          SVN_ERR(get_eol_style(&style, &eol, fb->eol_style_val->data,
                                eb->native_eol));
          repair = TRUE;
        }

      if (fb->keywords_val)
        SVN_ERR(svn_subst_build_keywords3(&final_kw, fb->keywords_val->data,
                                          fb->revision, fb->url,
                                          fb->repos_root_url, fb->date,
                                          fb->author, pool));

      SVN_ERR(svn_subst_copy_and_translate4(fb->tmppath, fb->path,
                                            eol, repair, final_kw,
                                            TRUE,
                                            fb->special,
                                            eb->cancel_func, eb->cancel_baton,
                                            pool));

      SVN_ERR(svn_io_remove_file2(fb->tmppath, FALSE, pool));
    }

  if (fb->executable_val)
    SVN_ERR(svn_io_set_file_executable(fb->path, TRUE, FALSE, pool));

  if (fb->date && (! fb->special))
    SVN_ERR(svn_io_set_file_affected_time(fb->date, fb->path, pool));

  if (fb->edit_baton->notify_func)
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(fb->path,
                                                     svn_wc_notify_update_add,
                                                     pool);
      notify->kind = svn_node_file;
      (*fb->edit_baton->notify_func)(fb->edit_baton->notify_baton, notify,
                                     pool);
    }

  return SVN_NO_ERROR;
}
