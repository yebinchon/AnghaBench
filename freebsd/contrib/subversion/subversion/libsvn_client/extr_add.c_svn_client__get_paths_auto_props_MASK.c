#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_magic__cookie_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_3__ {int /*<<< orphan*/  mimetypes_map; } ;
typedef  TYPE_1__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EXECUTABLE ; 
 int /*<<< orphan*/  SVN_PROP_MIME_TYPE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const**,scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const**,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC16(apr_hash_t **properties,
                                 const char **mimetype,
                                 const char *path,
                                 svn_magic__cookie_t *magic_cookie,
                                 apr_hash_t *autoprops,
                                 svn_client_ctx_t *ctx,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  svn_boolean_t have_executable = FALSE;

  *properties = FUNC2(result_pool);
  *mimetype = NULL;

  if (autoprops)
    {
      for (hi = FUNC1(scratch_pool, autoprops);
           hi != NULL;
           hi = FUNC3(hi))
        {
          const char *pattern = FUNC5(hi);
          apr_hash_t *propvals = FUNC6(hi);

          FUNC7(*properties, mimetype, &have_executable,
                                     FUNC10(path, scratch_pool),
                                     pattern, propvals, scratch_pool);
        }
    }

  /* if mimetype has not been set check the file */
  if (! *mimetype)
    {
      FUNC0(FUNC11(mimetype, path, ctx->mimetypes_map,
                                      result_pool));

      /* If we got no mime-type, or if it is "application/octet-stream",
       * try to get the mime-type from libmagic. */
      if (magic_cookie &&
          (!*mimetype ||
           FUNC8(*mimetype, "application/octet-stream") == 0))
        {
          const char *magic_mimetype;

         /* Since libmagic usually treats UTF-16 files as "text/plain",
          * svn_magic__detect_binary_mimetype() will return NULL for such
          * files. This is fine for now since we currently don't support
          * UTF-16-encoded text files (issue #2194).
          * Once we do support UTF-16 this code path will fail to detect
          * them as text unless the svn_io_detect_mimetype2() call above
          * returns "text/plain" for them. */
          FUNC0(FUNC13(&magic_mimetype,
                                                    path, magic_cookie,
                                                    result_pool,
                                                    scratch_pool));
          if (magic_mimetype)
            *mimetype = magic_mimetype;
        }

      if (*mimetype)
        FUNC4(*properties, SVN_PROP_MIME_TYPE,
                     FUNC9(SVN_PROP_MIME_TYPE),
                     FUNC14(*mimetype, result_pool));
    }

  /* if executable has not been set check the file */
  if (! have_executable)
    {
      svn_boolean_t executable = FALSE;
      FUNC0(FUNC12(&executable, path, scratch_pool));
      if (executable)
        FUNC4(*properties, SVN_PROP_EXECUTABLE,
                     FUNC9(SVN_PROP_EXECUTABLE),
                     FUNC15(result_pool));
    }

  return SVN_NO_ERROR;
}