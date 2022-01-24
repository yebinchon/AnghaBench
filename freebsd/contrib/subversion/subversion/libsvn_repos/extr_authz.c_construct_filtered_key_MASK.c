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
struct TYPE_6__ {size_t size; char* data; } ;
typedef  TYPE_1__ svn_membuf_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_membuf_t *
FUNC4(const char *repos_name,
                       const char *user,
                       const svn_membuf_t *authz_id,
                       apr_pool_t *result_pool)
{
  svn_membuf_t *result = FUNC0(result_pool, sizeof(*result));
  size_t repos_len = FUNC2(repos_name);
  size_t user_len = user ? FUNC2(user) : 1;
  const char *nullable_user = user ? user : "\0";
  size_t size = authz_id->size + repos_len + 1 + user_len + 1;

  FUNC3(result, size, result_pool);
  result->size = size;

  FUNC1(result->data, repos_name, repos_len + 1);
  size = repos_len + 1;
  FUNC1((char *)result->data + size, nullable_user, user_len + 1);
  size += user_len + 1;
  FUNC1((char *)result->data + size, authz_id->data, authz_id->size);

  return result;
}