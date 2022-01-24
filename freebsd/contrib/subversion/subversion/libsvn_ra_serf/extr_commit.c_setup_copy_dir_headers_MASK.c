#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
struct TYPE_9__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  working_url; int /*<<< orphan*/  name; TYPE_2__* parent_dir; scalar_t__ url; TYPE_6__* commit_ctx; } ;
typedef  TYPE_3__ dir_context_t ;
struct TYPE_10__ {char* path; } ;
typedef  TYPE_4__ apr_uri_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_11__ {TYPE_1__* session; } ;
struct TYPE_8__ {int /*<<< orphan*/  working_url; } ;
struct TYPE_7__ {TYPE_4__ session_url; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(serf_bucket_t *headers,
                       void *baton,
                       apr_pool_t *pool /* request pool */,
                       apr_pool_t *scratch_pool)
{
  dir_context_t *dir = baton;
  apr_uri_t uri;
  const char *absolute_uri;

  /* The Dest URI must be absolute.  Bummer. */
  uri = dir->commit_ctx->session->session_url;

  if (FUNC0(dir->commit_ctx))
    {
      uri.path = (char *)dir->url;
    }
  else
    {
      uri.path = (char *)FUNC7(
                                    dir->parent_dir->working_url,
                                    dir->name, pool);
    }
  absolute_uri = FUNC2(pool, &uri, 0);

  FUNC3(headers, "Destination", absolute_uri);

  FUNC4(headers, "Depth", "infinity");
  FUNC4(headers, "Overwrite", "F");

  /* Implicitly checkout this dir now. */
  dir->working_url = FUNC1(dir->pool, uri.path);

  return FUNC6(FUNC5(headers, baton, pool,
                                                      scratch_pool));
}