#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_subst_eol_style_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int apr_uint32_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int APR_CREATE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int APR_WRITE ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_IO_UNKNOWN_EOL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* SVN_SUBST_NATIVE_EOL_STR ; 
 int SVN_WC_TRANSLATE_FORCE_EOL_REPAIR ; 
 int SVN_WC_TRANSLATE_TO_NF ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_subst_eol_style_fixed ; 
 scalar_t__ svn_subst_eol_style_native ; 
 scalar_t__ svn_subst_eol_style_none ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (scalar_t__,char const*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,char const**,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC12(svn_stream_t **stream,
                                   svn_wc__db_t *db,
                                   const char *local_abspath,
                                   const char *versioned_abspath,
                                   apr_uint32_t flags,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  svn_boolean_t special;
  svn_boolean_t to_nf = flags & SVN_WC_TRANSLATE_TO_NF;
  svn_subst_eol_style_t style;
  const char *eol;
  apr_hash_t *keywords;
  svn_boolean_t repair_forced = flags & SVN_WC_TRANSLATE_FORCE_EOL_REPAIR;

  FUNC1(FUNC2(local_abspath));
  FUNC1(FUNC2(versioned_abspath));

  FUNC0(FUNC11(&style, &eol,
                                     &keywords,
                                     &special,
                                     db, versioned_abspath, NULL, FALSE,
                                     scratch_pool, scratch_pool));

  if (special)
    {
      if (to_nf)
        return FUNC8(stream, local_abspath, result_pool,
                                          scratch_pool);

      return FUNC7(stream, local_abspath, result_pool,
                                          scratch_pool);
    }

  if (to_nf)
    FUNC0(FUNC6(stream, local_abspath, result_pool,
                                     scratch_pool));
  else
    {
      apr_file_t *file;

      /* We don't want the "open-exclusively" feature of the normal
         svn_stream_open_writable interface. Do this manually. */
      FUNC0(FUNC4(&file, local_abspath,
                               APR_CREATE | APR_WRITE | APR_BUFFERED,
                               APR_OS_DEFAULT, result_pool));
      *stream = FUNC5(file, FALSE, result_pool);
    }

  if (FUNC10(style, eol, keywords, special, TRUE))
    {
      if (to_nf)
        {
          if (style == svn_subst_eol_style_native)
            eol = SVN_SUBST_NATIVE_EOL_STR;
          else if (style == svn_subst_eol_style_fixed)
            repair_forced = TRUE;
          else if (style != svn_subst_eol_style_none)
            return FUNC3(SVN_ERR_IO_UNKNOWN_EOL, NULL, NULL);

          /* Wrap the stream to translate to normal form */
          *stream = FUNC9(*stream,
                                                eol,
                                                repair_forced,
                                                keywords,
                                                FALSE /* expand */,
                                                result_pool);

          /* streams enforce our contract that TO_NF streams are read-only
           * by returning SVN_ERR_STREAM_NOT_SUPPORTED when trying to
           * write to them. */
        }
      else
        {
          *stream = FUNC9(*stream, eol, TRUE,
                                                keywords, TRUE, result_pool);

          /* streams enforce our contract that FROM_NF streams are write-only
           * by returning SVN_ERR_STREAM_NOT_SUPPORTED when trying to
           * read them. */
        }
    }

  return SVN_NO_ERROR;
}