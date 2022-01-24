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
typedef  int /*<<< orphan*/  svn_xml_parser_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct entries_accumulator {int /*<<< orphan*/  scratch_pool; int /*<<< orphan*/ * parser; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * entries; } ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_start_tag ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (struct entries_accumulator*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC9(const char *dir_abspath,
                  apr_hash_t *entries,
                  const char *buf,
                  apr_size_t size,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_xml_parser_t *svn_parser;
  struct entries_accumulator accum;

  /* Set up userData for the XML parser. */
  accum.entries = entries;
  accum.pool = result_pool;
  accum.scratch_pool = FUNC4(scratch_pool);

  /* Create the XML parser */
  svn_parser = FUNC7(&accum,
                                   handle_start_tag,
                                   NULL,
                                   NULL,
                                   scratch_pool);

  /* Store parser in its own userdata, so callbacks can call
     svn_xml_signal_bailout() */
  accum.parser = svn_parser;

  /* Parse. */
  FUNC0(FUNC8(svn_parser, buf, size, TRUE),
            FUNC2(scratch_pool,
                         FUNC1("XML parser failed in '%s'"),
                         FUNC3(dir_abspath, scratch_pool)));

  FUNC5(accum.scratch_pool);

  /* Clean up the XML parser */
  FUNC6(svn_parser);

  return SVN_NO_ERROR;
}