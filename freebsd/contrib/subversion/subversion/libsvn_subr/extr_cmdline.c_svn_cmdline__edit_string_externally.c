
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
struct TYPE_38__ {char const* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_39__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_40__ {scalar_t__ mtime; scalar_t__ size; } ;
typedef TYPE_3__ apr_finfo_t ;
typedef int apr_file_t ;


 int APR_EOL_STR ;
 int APR_FILEPATH_NATIVE ;
 int APR_FINFO_MTIME ;
 int APR_FINFO_SIZE ;
 scalar_t__ APR_STATUS_IS_EACCES (scalar_t__) ;
 scalar_t__ EROFS ;
 scalar_t__ FALSE ;
 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_EXTERNAL_PROGRAM ;
 TYPE_2__* SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 scalar_t__ apr_filepath_get (char**,int ,int *) ;
 scalar_t__ apr_filepath_set (char const*,int *) ;
 char* apr_psprintf (int *,char*,char const*,char const*) ;
 scalar_t__ apr_time_from_sec (int) ;
 TYPE_2__* find_editor_binary (char const**,char const*,int *) ;
 int stderr ;
 int strlen (char const*) ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_compose_create (TYPE_2__*,int ) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,char const*,int) ;
 TYPE_2__* svn_error_quick_wrap (TYPE_2__*,int ) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_error_wrap_apr (scalar_t__,int ,...) ;
 int svn_handle_error2 (TYPE_2__*,int ,scalar_t__,char*) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_del_none ;
 TYPE_2__* svn_io_file_write_full (int *,char const*,int ,int *,int *) ;
 TYPE_2__* svn_io_open_uniquely_named (int **,char const**,char*,char const*,char*,int ,int *,int *) ;
 int svn_io_remove_file2 (char const*,scalar_t__,int *) ;
 TYPE_2__* svn_io_set_file_affected_time (scalar_t__,char const*,int *) ;
 TYPE_2__* svn_io_stat (TYPE_3__*,char const*,int,int *) ;
 TYPE_2__* svn_io_temp_dir (char const**,int *) ;
 TYPE_2__* svn_path_cstring_from_utf8 (char const**,char const*,int *) ;
 TYPE_1__* svn_string_create_empty (int *) ;
 TYPE_1__* svn_string_dup (TYPE_1__ const*,int *) ;
 TYPE_1__* svn_stringbuf__morph_into_string (int *) ;
 TYPE_2__* svn_stringbuf_from_file2 (int **,char const*,int *) ;
 TYPE_2__* svn_subst_translate_cstring2 (char const*,char const**,int ,scalar_t__,int *,scalar_t__,int *) ;
 TYPE_2__* svn_subst_translate_string2 (TYPE_1__**,int *,int *,TYPE_1__*,char const*,scalar_t__,int *,int *) ;
 TYPE_2__* svn_utf_cstring_from_utf8 (char const**,char const*,int *) ;
 TYPE_2__* svn_utf_cstring_from_utf8_ex2 (char const**,char const*,char const*,int *) ;
 int system (char const*) ;

svn_error_t *
svn_cmdline__edit_string_externally(svn_string_t **edited_contents ,
                                    const char **tmpfile_left ,
                                    const char *editor_cmd,
                                    const char *base_dir ,
                                    const svn_string_t *contents ,
                                    const char *filename,
                                    apr_hash_t *config,
                                    svn_boolean_t as_text,
                                    const char *encoding,
                                    apr_pool_t *pool)
{
  const char *editor;
  const char *cmd;
  apr_file_t *tmp_file;
  const char *tmpfile_name;
  const char *tmpfile_native;
  const char *base_dir_apr;
  svn_string_t *translated_contents;
  apr_status_t apr_err;
  apr_size_t written;
  apr_finfo_t finfo_before, finfo_after;
  svn_error_t *err = SVN_NO_ERROR;
  char *old_cwd;
  int sys_err;
  svn_boolean_t remove_file = TRUE;

  SVN_ERR(find_editor_binary(&editor, editor_cmd, config));


  if (as_text)
    {
      const char *translated;
      SVN_ERR(svn_subst_translate_cstring2(contents->data, &translated,
                                           APR_EOL_STR, FALSE,
                                           ((void*)0), FALSE, pool));
      translated_contents = svn_string_create_empty(pool);
      if (encoding)
        SVN_ERR(svn_utf_cstring_from_utf8_ex2(&translated_contents->data,
                                              translated, encoding, pool));
      else
        SVN_ERR(svn_utf_cstring_from_utf8(&translated_contents->data,
                                          translated, pool));
      translated_contents->len = strlen(translated_contents->data);
    }
  else
    translated_contents = svn_string_dup(contents, pool);



  apr_err = apr_filepath_get(&old_cwd, APR_FILEPATH_NATIVE, pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err, _("Can't get working directory"));


  if (base_dir[0] == '\0')
    base_dir_apr = ".";
  else
    SVN_ERR(svn_path_cstring_from_utf8(&base_dir_apr, base_dir, pool));
  apr_err = apr_filepath_set(base_dir_apr, pool);
  if (apr_err)
    {
      return svn_error_wrap_apr
        (apr_err, _("Can't change working directory to '%s'"), base_dir);
    }




  err = svn_io_open_uniquely_named(&tmp_file, &tmpfile_name,
                                   "" ,
                                   filename,
                                   ".tmp",
                                   svn_io_file_del_none, pool, pool);

  if (err && (APR_STATUS_IS_EACCES(err->apr_err) || err->apr_err == EROFS))
    {
      const char *temp_dir_apr;

      svn_error_clear(err);

      SVN_ERR(svn_io_temp_dir(&base_dir, pool));

      SVN_ERR(svn_path_cstring_from_utf8(&temp_dir_apr, base_dir, pool));
      apr_err = apr_filepath_set(temp_dir_apr, pool);
      if (apr_err)
        {
          return svn_error_wrap_apr
            (apr_err, _("Can't change working directory to '%s'"), base_dir);
        }

      err = svn_io_open_uniquely_named(&tmp_file, &tmpfile_name,
                                       "" ,
                                       filename,
                                       ".tmp",
                                       svn_io_file_del_none, pool, pool);
    }

  if (err)
    goto cleanup2;





  err = svn_io_file_write_full(tmp_file, translated_contents->data,
                               translated_contents->len, &written,
                               pool);

  err = svn_error_compose_create(err, svn_io_file_close(tmp_file, pool));


  if (err)
    goto cleanup;



  err = svn_io_stat(&finfo_before, tmpfile_name, APR_FINFO_MTIME, pool);
  if (err)
    goto cleanup;





  err = svn_io_set_file_affected_time(finfo_before.mtime
                                              - apr_time_from_sec(2),
                                      tmpfile_name, pool);
  svn_error_clear(err);


  err = svn_io_stat(&finfo_before, tmpfile_name,
                    APR_FINFO_MTIME | APR_FINFO_SIZE, pool);
  if (err)
    goto cleanup;


  err = svn_utf_cstring_from_utf8(&tmpfile_native, tmpfile_name, pool);
  if (err)
    goto cleanup;
  cmd = apr_psprintf(pool, "%s %s", editor, tmpfile_native);



  if (tmpfile_left)
    {
      *tmpfile_left = svn_dirent_join(base_dir, tmpfile_name, pool);
      remove_file = FALSE;
    }


  sys_err = system(cmd);
  if (sys_err != 0)
    {


      err = svn_error_createf(SVN_ERR_EXTERNAL_PROGRAM, ((void*)0),
                               _("system('%s') returned %d"), cmd, sys_err);
      goto cleanup;
    }


  err = svn_io_stat(&finfo_after, tmpfile_name,
                    APR_FINFO_MTIME | APR_FINFO_SIZE, pool);
  if (err)
    goto cleanup;


  if ((finfo_before.mtime != finfo_after.mtime) ||
      (finfo_before.size != finfo_after.size))
    {
      svn_stringbuf_t *edited_contents_s;
      err = svn_stringbuf_from_file2(&edited_contents_s, tmpfile_name, pool);
      if (err)
        goto cleanup;

      *edited_contents = svn_stringbuf__morph_into_string(edited_contents_s);


      if (as_text)
        {
          err = svn_subst_translate_string2(edited_contents, ((void*)0), ((void*)0),
                                            *edited_contents, encoding, FALSE,
                                            pool, pool);
          if (err)
            {
              err = svn_error_quick_wrap
                (err,
                 _("Error normalizing edited contents to internal format"));
              goto cleanup;
            }
        }
    }
  else
    {

      *edited_contents = ((void*)0);
    }

 cleanup:
  if (remove_file)
    {

      err = svn_error_compose_create(
              err,
              svn_io_remove_file2(tmpfile_name, FALSE, pool));
    }

 cleanup2:


  apr_err = apr_filepath_set(old_cwd, pool);
  if (apr_err)
    {
      svn_handle_error2(svn_error_wrap_apr
                        (apr_err, _("Can't restore working directory")),
                        stderr, TRUE , "svn: ");
    }

  return svn_error_trace(err);
}
