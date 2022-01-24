#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stringbuf_t ;
struct TYPE_38__ {char const* data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ svn_string_t ;
struct TYPE_39__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_40__ {scalar_t__ mtime; scalar_t__ size; } ;
typedef  TYPE_3__ apr_finfo_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EOL_STR ; 
 int /*<<< orphan*/  APR_FILEPATH_NATIVE ; 
 int APR_FINFO_MTIME ; 
 int APR_FINFO_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ EROFS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  SVN_ERR_EXTERNAL_PROGRAM ; 
 TYPE_2__* SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 
 scalar_t__ FUNC6 (int) ; 
 TYPE_2__* FUNC7 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 char* FUNC9 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_2__* FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_2__* FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC14 (TYPE_2__*) ; 
 TYPE_2__* FUNC15 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC19 (int /*<<< orphan*/ **,char const**,char*,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC21 (scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC22 (TYPE_3__*,char const*,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC23 (char const**,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC24 (char const**,char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC25 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC26 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC27 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC28 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC29 (char const*,char const**,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC30 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC31 (char const**,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC32 (char const**,char const*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC33 (char const*) ; 

svn_error_t *
FUNC34(svn_string_t **edited_contents /* UTF-8! */,
                                    const char **tmpfile_left /* UTF-8! */,
                                    const char *editor_cmd,
                                    const char *base_dir /* UTF-8! */,
                                    const svn_string_t *contents /* UTF-8! */,
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

  FUNC1(FUNC7(&editor, editor_cmd, config));

  /* Convert file contents from UTF-8/LF if desired. */
  if (as_text)
    {
      const char *translated;
      FUNC1(FUNC29(contents->data, &translated,
                                           APR_EOL_STR, FALSE,
                                           NULL, FALSE, pool));
      translated_contents = FUNC25(pool);
      if (encoding)
        FUNC1(FUNC32(&translated_contents->data,
                                              translated, encoding, pool));
      else
        FUNC1(FUNC31(&translated_contents->data,
                                          translated, pool));
      translated_contents->len = FUNC8(translated_contents->data);
    }
  else
    translated_contents = FUNC26(contents, pool);

  /* Move to BASE_DIR to avoid getting characters that need quoting
     into tmpfile_name */
  apr_err = FUNC3(&old_cwd, APR_FILEPATH_NATIVE, pool);
  if (apr_err)
    return FUNC15(apr_err, FUNC2("Can't get working directory"));

  /* APR doesn't like "" directories */
  if (base_dir[0] == '\0')
    base_dir_apr = ".";
  else
    FUNC1(FUNC24(&base_dir_apr, base_dir, pool));
  apr_err = FUNC4(base_dir_apr, pool);
  if (apr_err)
    {
      return FUNC15
        (apr_err, FUNC2("Can't change working directory to '%s'"), base_dir);
    }

  /*** From here on, any problems that occur require us to cd back!! ***/

  /* Ask the working copy for a temporary file named FILENAME-something. */
  err = FUNC19(&tmp_file, &tmpfile_name,
                                   "" /* dirpath */,
                                   filename,
                                   ".tmp",
                                   svn_io_file_del_none, pool, pool);

  if (err && (FUNC0(err->apr_err) || err->apr_err == EROFS))
    {
      const char *temp_dir_apr;

      FUNC10(err);

      FUNC1(FUNC23(&base_dir, pool));

      FUNC1(FUNC24(&temp_dir_apr, base_dir, pool));
      apr_err = FUNC4(temp_dir_apr, pool);
      if (apr_err)
        {
          return FUNC15
            (apr_err, FUNC2("Can't change working directory to '%s'"), base_dir);
        }

      err = FUNC19(&tmp_file, &tmpfile_name,
                                       "" /* dirpath */,
                                       filename,
                                       ".tmp",
                                       svn_io_file_del_none, pool, pool);
    }

  if (err)
    goto cleanup2;

  /*** From here on, any problems that occur require us to cleanup
       the file we just created!! ***/

  /* Dump initial CONTENTS to TMP_FILE. */
  err = FUNC18(tmp_file, translated_contents->data,
                               translated_contents->len, &written,
                               pool);

  err = FUNC11(err, FUNC17(tmp_file, pool));

  /* Make sure the whole CONTENTS were written, else return an error. */
  if (err)
    goto cleanup;

  /* Get information about the temporary file before the user has
     been allowed to edit its contents. */
  err = FUNC22(&finfo_before, tmpfile_name, APR_FINFO_MTIME, pool);
  if (err)
    goto cleanup;

  /* Backdate the file a little bit in case the editor is very fast
     and doesn't change the size.  (Use two seconds, since some
     filesystems have coarse granularity.)  It's OK if this call
     fails, so we don't check its return value.*/
  err = FUNC21(finfo_before.mtime
                                              - FUNC6(2),
                                      tmpfile_name, pool);
  FUNC10(err);

  /* Stat it again to get the mtime we actually set. */
  err = FUNC22(&finfo_before, tmpfile_name,
                    APR_FINFO_MTIME | APR_FINFO_SIZE, pool);
  if (err)
    goto cleanup;

  /* Prepare the editor command line.  */
  err = FUNC31(&tmpfile_native, tmpfile_name, pool);
  if (err)
    goto cleanup;
  cmd = FUNC5(pool, "%s %s", editor, tmpfile_native);

  /* If the caller wants us to leave the file around, return the path
     of the file we'll use, and make a note not to destroy it.  */
  if (tmpfile_left)
    {
      *tmpfile_left = FUNC9(base_dir, tmpfile_name, pool);
      remove_file = FALSE;
    }

  /* Now, run the editor command line.  */
  sys_err = FUNC33(cmd);
  if (sys_err != 0)
    {
      /* Extracting any meaning from sys_err is platform specific, so just
         use the raw value. */
      err =  FUNC12(SVN_ERR_EXTERNAL_PROGRAM, NULL,
                               FUNC2("system('%s') returned %d"), cmd, sys_err);
      goto cleanup;
    }

  /* Get information about the temporary file after the assumed editing. */
  err = FUNC22(&finfo_after, tmpfile_name,
                    APR_FINFO_MTIME | APR_FINFO_SIZE, pool);
  if (err)
    goto cleanup;

  /* If the file looks changed... */
  if ((finfo_before.mtime != finfo_after.mtime) ||
      (finfo_before.size != finfo_after.size))
    {
      svn_stringbuf_t *edited_contents_s;
      err = FUNC28(&edited_contents_s, tmpfile_name, pool);
      if (err)
        goto cleanup;

      *edited_contents = FUNC27(edited_contents_s);

      /* Translate back to UTF8/LF if desired. */
      if (as_text)
        {
          err = FUNC30(edited_contents, NULL, NULL,
                                            *edited_contents, encoding, FALSE,
                                            pool, pool);
          if (err)
            {
              err = FUNC13
                (err,
                 FUNC2("Error normalizing edited contents to internal format"));
              goto cleanup;
            }
        }
    }
  else
    {
      /* No edits seem to have been made */
      *edited_contents = NULL;
    }

 cleanup:
  if (remove_file)
    {
      /* Remove the file from disk.  */
      err = FUNC11(
              err,
              FUNC20(tmpfile_name, FALSE, pool));
    }

 cleanup2:
  /* If we against all probability can't cd back, all further relative
     file references would be screwed up, so we have to abort. */
  apr_err = FUNC4(old_cwd, pool);
  if (apr_err)
    {
      FUNC16(FUNC15
                        (apr_err, FUNC2("Can't restore working directory")),
                        stderr, TRUE /* fatal */, "svn: ");
    }

  return FUNC14(err);
}