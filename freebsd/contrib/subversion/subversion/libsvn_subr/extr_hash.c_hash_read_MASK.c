#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_3__ {int /*<<< orphan*/  keylen; int /*<<< orphan*/ * key; int /*<<< orphan*/  vallen; scalar_t__ val; } ;
typedef  TYPE_1__ svn_hash__entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(apr_hash_t *hash, svn_stream_t *stream, const char *terminator,
          svn_boolean_t incremental, apr_pool_t *pool)
{
  apr_pool_t *iterpool = FUNC5(pool);

  while (1)
    {
      svn_hash__entry_t entry;

      FUNC4(iterpool);
      FUNC0(FUNC3(&entry, stream, terminator,
                                   incremental, iterpool));

      /* end of hash? */
      if (entry.key == NULL)
        break;

      if (entry.val)
        {
          /* Add a new hash entry. */
          FUNC1(hash, FUNC2(pool, entry.key, entry.keylen),
                       entry.keylen,
                       FUNC7(entry.val, entry.vallen, pool));
        }
      else
        {
          /* Remove this hash entry. */
          FUNC1(hash, entry.key, entry.keylen, NULL);
        }
    }

  FUNC6(iterpool);
  return SVN_NO_ERROR;
}