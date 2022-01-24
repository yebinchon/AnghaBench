#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char const* data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 char const* APR_EOL_STR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 char* FUNC6 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char const**,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC14(svn_string_t *propval,
                  const char *target_abspath_or_url,
                  const char *abspath_or_URL,
                  const char *wc_path_prefix,
                  svn_stream_t *out,
                  const char *pname,
                  svn_boolean_t print_filenames,
                  svn_boolean_t omit_newline,
                  svn_boolean_t like_proplist,
                  svn_boolean_t inherited_property,
                  apr_pool_t *scratch_pool)
{
  if (print_filenames)
    {
      const char *header;

      /* Print the file name. */

      if (! FUNC10(abspath_or_URL))
        abspath_or_URL = FUNC6(wc_path_prefix,
                                                           abspath_or_URL,
                                                           scratch_pool);

      /* In verbose mode, print exactly same as "proplist" does;
       * otherwise, print a brief header. */
      if (inherited_property)
        {
          if (like_proplist)
            {
              if (! FUNC10(target_abspath_or_url))
                target_abspath_or_url =
                  FUNC6(wc_path_prefix,
                                                    target_abspath_or_url,
                                                    scratch_pool);
              header = FUNC3(
                scratch_pool,
                FUNC1("Inherited properties on '%s',\nfrom '%s':\n"),
                target_abspath_or_url, abspath_or_URL);
            }
          else
            {
              header = FUNC3(scratch_pool, "%s - ", abspath_or_URL);
            }
        }
      else
        header = FUNC3(scratch_pool, like_proplist
                              ? FUNC1("Properties on '%s':\n")
                              : "%s - ", abspath_or_URL);
      FUNC0(FUNC8(&header, header, scratch_pool));
      FUNC0(FUNC13(header, &header,
                                           APR_EOL_STR,  /* 'native' eol */
                                           FALSE, /* no repair */
                                           NULL,  /* no keywords */
                                           FALSE, /* no expansion */
                                           scratch_pool));
      FUNC0(FUNC4(out, header, FUNC5(header)));
    }

  if (like_proplist)
    {
      /* Print the property name and value just as "proplist -v" does */
      apr_hash_t *hash = FUNC2(scratch_pool);

      FUNC9(hash, pname, propval);
      FUNC0(FUNC7(out, hash, FALSE, scratch_pool));
    }
  else
    {
      /* If this is a special Subversion property, it is stored as
         UTF8, so convert to the native format. */
      if (FUNC11(pname))
        FUNC0(FUNC12(&propval, propval,
                                             TRUE, scratch_pool));

      FUNC0(FUNC4(out, propval->data, propval->len));

      if (! omit_newline)
        FUNC0(FUNC4(out, APR_EOL_STR,
                             FUNC5(APR_EOL_STR)));
    }
  return SVN_NO_ERROR;
}