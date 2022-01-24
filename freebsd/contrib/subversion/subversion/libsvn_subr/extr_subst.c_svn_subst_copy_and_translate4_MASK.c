#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct TYPE_10__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_IO_INCONSISTENT_EOL ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_io_file_del_none ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ **,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC21(const char *src,
                              const char *dst,
                              const char *eol_str,
                              svn_boolean_t repair,
                              apr_hash_t *keywords,
                              svn_boolean_t expand,
                              svn_boolean_t special,
                              svn_cancel_func_t cancel_func,
                              void *cancel_baton,
                              apr_pool_t *pool)
{
  svn_stream_t *src_stream;
  svn_stream_t *dst_stream;
  const char *dst_tmp;
  svn_error_t *err;
  svn_node_kind_t kind;
  svn_boolean_t path_special;

  FUNC0(FUNC10(src, &kind, &path_special, pool));

  /* If this is a 'special' file, we may need to create it or
     detranslate it. */
  if (special || path_special)
    {
      if (expand)
        {
          if (path_special)
            {
              /* We are being asked to create a special file from a special
                 file.  Do a temporary detranslation and work from there. */

              /* ### woah. this section just undoes all the work we already did
                 ### to read the contents of the special file. shoot... the
                 ### svn_subst_read_specialfile even checks the file type
                 ### for us! */

              FUNC0(FUNC19(&src_stream, src, pool, pool));
            }
          else
            {
              FUNC0(FUNC17(&src_stream, src, pool, pool));
            }

          FUNC0(FUNC3(src_stream, dst, pool));

          return FUNC9(FUNC15(src_stream));
        }
      /* else !expand */

      return FUNC9(FUNC4(src, dst,
                                                      cancel_func,
                                                      cancel_baton,
                                                      pool));
    }

  /* The easy way out:  no translation needed, just copy. */
  if (! (eol_str || (keywords && (FUNC2(keywords) > 0))))
    return FUNC9(FUNC11(src, dst, FALSE, pool));

  /* Open source file. */
  FUNC0(FUNC17(&src_stream, src, pool, pool));

  /* For atomicity, we translate to a tmp file and then rename the tmp file
     over the real destination. */
  FUNC0(FUNC18(&dst_stream, &dst_tmp,
                                 FUNC5(dst, pool),
                                 svn_io_file_del_none, pool, pool));

  dst_stream = FUNC20(dst_stream, eol_str, repair,
                                           keywords, expand, pool);

  /* ###: use cancel func/baton in place of NULL/NULL below. */
  err = FUNC16(src_stream, dst_stream, cancel_func, cancel_baton,
                         pool);
  if (err)
    {
      /* On errors, we have a pathname available. */
      if (err->apr_err == SVN_ERR_IO_INCONSISTENT_EOL)
        err = FUNC8(SVN_ERR_IO_INCONSISTENT_EOL, err,
                                FUNC1("File '%s' has inconsistent newlines"),
                                FUNC6(src, pool));
      return FUNC7(err, FUNC14(dst_tmp,
                                                               FALSE, pool));
    }

  /* Now that dst_tmp contains the translated data, do the atomic rename. */
  FUNC0(FUNC13(dst_tmp, dst, FALSE, pool));

  /* Preserve the source file's permission bits. */
  FUNC0(FUNC12(src, dst, pool));

  return SVN_NO_ERROR;
}