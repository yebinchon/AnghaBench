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
typedef  scalar_t__ svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  APR_READ ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_IO_UNKNOWN_EOL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* SVN_SUBST_NATIVE_EOL_STR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_subst_eol_style_fixed ; 
 scalar_t__ svn_subst_eol_style_native ; 
 scalar_t__ svn_subst_eol_style_none ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (scalar_t__,char const*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,char const**,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_boolean_t *modified_p,
                   svn_wc__db_t *db,
                   const char *versioned_file_abspath,
                   svn_filesize_t versioned_file_size,
                   svn_stream_t *pristine_stream,
                   svn_filesize_t pristine_size,
                   svn_boolean_t has_props,
                   svn_boolean_t props_mod,
                   svn_boolean_t exact_comparison,
                   apr_pool_t *scratch_pool)
{
  svn_boolean_t same;
  svn_subst_eol_style_t eol_style;
  const char *eol_str;
  apr_hash_t *keywords;
  svn_boolean_t special = FALSE;
  svn_boolean_t need_translation;
  svn_stream_t *v_stream; /* versioned_file */

  FUNC1(FUNC2(versioned_file_abspath));

  if (props_mod)
    has_props = TRUE; /* Maybe it didn't have properties; but it has now */

  if (has_props)
    {
      FUNC0(FUNC12(&eol_style, &eol_str,
                                         &keywords,
                                         &special,
                                         db, versioned_file_abspath, NULL,
                                         !exact_comparison,
                                         scratch_pool, scratch_pool));

      need_translation = FUNC11(eol_style, eol_str,
                                                        keywords, special,
                                                        TRUE);
    }
  else
    need_translation = FALSE;

  if (! need_translation
      && (versioned_file_size != pristine_size))
    {
      *modified_p = TRUE;

      /* ### Why did we open the pristine? */
      return FUNC4(FUNC6(pristine_stream));
    }

  /* ### Other checks possible? */

  /* Reading files is necessary. */
  if (special && need_translation)
    {
      FUNC0(FUNC9(&v_stream, versioned_file_abspath,
                                          scratch_pool, scratch_pool));
    }
  else
    {
      /* We don't use APR-level buffering because the comparison function
       * will do its own buffering. */
      apr_file_t *file;
      FUNC0(FUNC5(&file, versioned_file_abspath, APR_READ,
                               APR_OS_DEFAULT, scratch_pool));
      v_stream = FUNC8(file, FALSE, scratch_pool);

      if (need_translation)
        {
          if (!exact_comparison)
            {
              if (eol_style == svn_subst_eol_style_native)
                eol_str = SVN_SUBST_NATIVE_EOL_STR;
              else if (eol_style != svn_subst_eol_style_fixed
                       && eol_style != svn_subst_eol_style_none)
                return FUNC3(SVN_ERR_IO_UNKNOWN_EOL,
                                        FUNC6(v_stream), NULL);

              /* Wrap file stream to detranslate into normal form,
               * "repairing" the EOL style if it is inconsistent. */
              v_stream = FUNC10(v_stream,
                                                     eol_str,
                                                     TRUE /* repair */,
                                                     keywords,
                                                     FALSE /* expand */,
                                                     scratch_pool);
            }
          else
            {
              /* Wrap base stream to translate into working copy form, and
               * arrange to throw an error if its EOL style is inconsistent. */
              pristine_stream = FUNC10(pristine_stream,
                                                            eol_str, FALSE,
                                                            keywords, TRUE,
                                                            scratch_pool);
            }
        }
    }

  FUNC0(FUNC7(&same, pristine_stream, v_stream,
                                    scratch_pool));

  *modified_p = (! same);

  return SVN_NO_ERROR;
}