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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_client_ctx_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_t ;
typedef  int /*<<< orphan*/  svn_client_conflict_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  resolve_postpone ; 
 int /*<<< orphan*/  resolve_text_conflict ; 
 int /*<<< orphan*/  svn_client_conflict_option_base_text ; 
 int /*<<< orphan*/  svn_client_conflict_option_incoming_text ; 
 int /*<<< orphan*/  svn_client_conflict_option_incoming_text_where_conflicted ; 
 int /*<<< orphan*/  svn_client_conflict_option_merged_text ; 
 int /*<<< orphan*/  svn_client_conflict_option_postpone ; 
 int /*<<< orphan*/  svn_client_conflict_option_working_text ; 
 int /*<<< orphan*/  svn_client_conflict_option_working_text_where_conflicted ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*) ; 

svn_error_t *
FUNC7(apr_array_header_t **options,
                                                svn_client_conflict_t *conflict,
                                                svn_client_ctx_t *ctx,
                                                apr_pool_t *result_pool,
                                                apr_pool_t *scratch_pool)
{
  const char *mime_type;

  FUNC0(FUNC4(conflict, scratch_pool));

  *options = FUNC3(result_pool, 7,
                            sizeof(svn_client_conflict_option_t *));

  FUNC2(*options, conflict,
      svn_client_conflict_option_postpone,
      FUNC1("Postpone"),
      FUNC1("skip this conflict and leave it unresolved"),
      resolve_postpone);

  mime_type = FUNC5(conflict);
  if (mime_type && FUNC6(mime_type))
    {
      /* Resolver options for a binary file conflict. */
      FUNC2(*options, conflict,
        svn_client_conflict_option_base_text,
        FUNC1("Accept base"),
        FUNC1("discard local and incoming changes for this binary file"),
        resolve_text_conflict);

      FUNC2(*options, conflict,
        svn_client_conflict_option_incoming_text,
        FUNC1("Accept incoming"),
        FUNC1("accept incoming version of binary file"),
        resolve_text_conflict);

      FUNC2(*options, conflict,
        svn_client_conflict_option_working_text,
        FUNC1("Mark as resolved"),
        FUNC1("accept binary file as it appears in the working copy"),
        resolve_text_conflict);
  }
  else
    {
      /* Resolver options for a text file conflict. */
      FUNC2(*options, conflict,
        svn_client_conflict_option_base_text,
        FUNC1("Accept base"),
        FUNC1("discard local and incoming changes for this file"),
        resolve_text_conflict);

      FUNC2(*options, conflict,
        svn_client_conflict_option_incoming_text,
        FUNC1("Accept incoming"),
        FUNC1("accept incoming version of entire file"),
        resolve_text_conflict);

      FUNC2(*options, conflict,
        svn_client_conflict_option_working_text,
        FUNC1("Reject incoming"),
        FUNC1("reject all incoming changes for this file"),
        resolve_text_conflict);

      FUNC2(*options, conflict,
        svn_client_conflict_option_incoming_text_where_conflicted,
        FUNC1("Accept incoming for conflicts"),
        FUNC1("accept changes only where they conflict"),
        resolve_text_conflict);

      FUNC2(*options, conflict,
        svn_client_conflict_option_working_text_where_conflicted,
        FUNC1("Reject conflicts"),
        FUNC1("reject changes which conflict and accept the rest"),
        resolve_text_conflict);

      FUNC2(*options, conflict,
        svn_client_conflict_option_merged_text,
        FUNC1("Mark as resolved"),
        FUNC1("accept the file as it appears in the working copy"),
        resolve_text_conflict);
    }

  return SVN_NO_ERROR;
}