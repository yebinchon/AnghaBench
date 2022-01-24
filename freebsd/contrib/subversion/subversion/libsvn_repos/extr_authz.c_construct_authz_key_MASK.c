#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int size; char* data; } ;
typedef  TYPE_1__ svn_membuf_t ;
struct TYPE_10__ {int /*<<< orphan*/  digest; } ;
typedef  TYPE_2__ svn_checksum_t ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_membuf_t *
FUNC4(const svn_checksum_t *authz_key,
                    const svn_checksum_t *groups_key,
                    apr_pool_t *result_pool)
{
  svn_membuf_t *result = FUNC0(result_pool, sizeof(*result));
  if (groups_key)
    {
      apr_size_t authz_size = FUNC2(authz_key);
      apr_size_t groups_size = FUNC2(groups_key);

      FUNC3(result, authz_size + groups_size, result_pool);
      result->size = authz_size + groups_size; /* exact length is required! */

      FUNC1(result->data, authz_key->digest, authz_size);
      FUNC1((char *)result->data + authz_size,
             groups_key->digest, groups_size);
    }
  else
    {
      apr_size_t size = FUNC2(authz_key);
      FUNC3(result, size, result_pool);
      result->size = size; /* exact length is required! */
      FUNC1(result->data, authz_key->digest, size);
    }

  return result;
}