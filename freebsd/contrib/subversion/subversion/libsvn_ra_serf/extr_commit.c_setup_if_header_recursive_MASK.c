#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
struct TYPE_12__ {TYPE_1__* session; int /*<<< orphan*/  deleted_entries; int /*<<< orphan*/  lock_tokens; } ;
typedef  TYPE_3__ commit_context_t ;
struct TYPE_13__ {char* path; } ;
typedef  TYPE_4__ apr_uri_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_10__ {TYPE_4__ session_url; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC7 (char*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*) ; 
 TYPE_2__* FUNC14 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC15(svn_boolean_t *added,
                          serf_bucket_t *headers,
                          commit_context_t *commit_ctx,
                          const char *rq_relpath,
                          apr_pool_t *pool)
{
  svn_stringbuf_t *sb = NULL;
  apr_hash_index_t *hi;
  apr_pool_t *iterpool = NULL;

  if (!commit_ctx->lock_tokens)
    {
      *added = FALSE;
      return SVN_NO_ERROR;
    }

  /* We try to create a directory, so within the Subversion world that
     would imply that there is nothing here, but mod_dav_svn still sees
     locks on the old nodes here as in DAV it is perfectly legal to lock
     something that is not there...

     Let's make mod_dav, mod_dav_svn and the DAV RFC happy by providing
     the locks we know of with the request */

  for (hi = FUNC0(pool, commit_ctx->lock_tokens);
       hi;
       hi = FUNC1(hi))
    {
      const char *relpath = FUNC2(hi);
      apr_uri_t uri;

      if (!FUNC11(rq_relpath, relpath))
        continue;
      else if (FUNC6(commit_ctx->deleted_entries, relpath))
        {
          /* When a path is already explicit deleted then its lock
             will be removed by mod_dav. But mod_dav doesn't remove
             locks on descendants */
          continue;
        }

      if (!iterpool)
        iterpool = FUNC9(pool);
      else
        FUNC8(iterpool);

      if (sb == NULL)
        sb = FUNC14("", pool);
      else
        FUNC12(sb, ' ');

      uri = commit_ctx->session->session_url;
      uri.path = (char *)FUNC7(uri.path, relpath,
                                                    iterpool);

      FUNC12(sb, '<');
      FUNC13(sb, FUNC4(iterpool, &uri, 0));
      FUNC13(sb, "> (<");
      FUNC13(sb, FUNC3(hi));
      FUNC13(sb, ">)");
    }

  if (iterpool)
    FUNC10(iterpool);

  if (sb)
    {
      FUNC5(headers, "If", sb->data);
      *added = TRUE;
    }
  else
    *added = FALSE;

  return SVN_NO_ERROR;
}