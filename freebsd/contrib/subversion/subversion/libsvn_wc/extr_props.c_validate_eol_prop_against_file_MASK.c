#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* (* svn_wc_canonicalize_svn_prop_get_file_t ) (TYPE_2__ const**,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ;
struct TYPE_16__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 scalar_t__ SVN_ERR_IO_INCONSISTENT_EOL ; 
 int /*<<< orphan*/  SVN_PROP_EOL_STYLE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char const* FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char const*,...) ; 
 TYPE_1__* FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(const char *path,
                               svn_wc_canonicalize_svn_prop_get_file_t getter,
                               void *getter_baton,
                               apr_pool_t *pool)
{
  svn_stream_t *translating_stream;
  svn_error_t *err;
  const svn_string_t *mime_type;
  const char *path_display
    = FUNC7(path) ? path : FUNC2(path, pool);

  /* First just ask the "getter" for the MIME type. */
  FUNC0(getter(&mime_type, NULL, getter_baton, pool));

  /* See if this file has been determined to be binary. */
  if (mime_type && FUNC6(mime_type->data))
    return FUNC4
      (SVN_ERR_ILLEGAL_TARGET, NULL,
       FUNC1("Can't set '%s': "
         "file '%s' has binary mime type property"),
       SVN_PROP_EOL_STYLE, path_display);

  /* Now ask the getter for the contents of the file; this will do a
     newline translation.  All we really care about here is whether or
     not the function fails on inconsistent line endings.  The
     function is "translating" to an empty stream.  This is
     sneeeeeeeeeeeaky. */
  translating_stream = FUNC10(FUNC9(pool),
                                                   "", FALSE, NULL, FALSE,
                                                   pool);

  err = getter(NULL, translating_stream, getter_baton, pool);

  err = FUNC3(err, FUNC8(translating_stream));

  if (err && err->apr_err == SVN_ERR_IO_INCONSISTENT_EOL)
    return FUNC4(SVN_ERR_ILLEGAL_TARGET, err,
                             FUNC1("File '%s' has inconsistent newlines"),
                             path_display);

  return FUNC5(err);
}