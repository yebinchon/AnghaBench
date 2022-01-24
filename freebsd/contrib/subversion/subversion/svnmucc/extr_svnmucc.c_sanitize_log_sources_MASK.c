#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_6__ {char const* data; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_LOG ; 
 char* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char **final_message,
                     const char *message,
                     apr_hash_t *revprops,
                     svn_stringbuf_t *filedata,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_string_t *msg;

  *final_message = NULL;
  /* If we already have a log message in the revprop hash, then just
     make sure the user didn't try to also use -m or -F.  Otherwise,
     we need to consult -m or -F to find a log message, if any. */
  msg = FUNC2(revprops, SVN_PROP_REVISION_LOG);
  if (msg)
    {
      if (filedata || message)
        return FUNC1();

      *final_message = FUNC0(result_pool, msg->data);

      /* Will be re-added by libsvn_client */
      FUNC3(revprops, SVN_PROP_REVISION_LOG, NULL);
    }
  else if (filedata)
    {
      if (message)
        return FUNC1();

      *final_message = FUNC0(result_pool, filedata->data);
    }
  else if (message)
    {
      *final_message = FUNC0(result_pool, message);
    }

  return SVN_NO_ERROR;
}