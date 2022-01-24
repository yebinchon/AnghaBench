#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
struct TYPE_7__ {TYPE_1__* session; int /*<<< orphan*/  lock_tokens; int /*<<< orphan*/  deleted_entries; } ;
typedef  TYPE_2__ commit_context_t ;
struct TYPE_8__ {char* path; } ;
typedef  TYPE_3__ apr_uri_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {TYPE_3__ session_url; } ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*,char const*,char*,char const*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(serf_bucket_t *headers,
                            commit_context_t *commit_ctx,
                            const char *relpath,
                            apr_pool_t *pool)
{
  const char *token;

  if (! commit_ctx->lock_tokens)
    return SVN_NO_ERROR;

  if (! FUNC3(commit_ctx->deleted_entries, relpath))
    {
      token = FUNC3(commit_ctx->lock_tokens, relpath);
      if (token)
        {
          const char *token_header;
          const char *token_uri;
          apr_uri_t uri = commit_ctx->session->session_url;

          /* Supplying the optional URI affects apache response when
             the lock is broken, see issue 4369.  When present any URI
             must be absolute (RFC 2518 9.4). */
          uri.path = (char *)FUNC4(uri.path, relpath,
                                                         pool);
          token_uri = FUNC1(pool, &uri, 0);

          token_header = FUNC0(pool, "<", token_uri, "> (<", token, ">)",
                                     SVN_VA_NULL);
          FUNC2(headers, "If", token_header);
        }
    }

  return SVN_NO_ERROR;
}