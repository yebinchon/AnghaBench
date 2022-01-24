#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_5__ {int /*<<< orphan*/  aces; TYPE_4__* cb; } ;
typedef  TYPE_1__ merge_alias_baton_t ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  access; int /*<<< orphan*/  inverted; } ;
typedef  TYPE_2__ authz_ace_t ;
typedef  int /*<<< orphan*/  apr_ssize_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {int /*<<< orphan*/  parser_pool; int /*<<< orphan*/  parsed_aliases; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SVN_ERR_AUTHZ_INVALID_CONFIG ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_4__*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,TYPE_2__*) ; 

__attribute__((used)) static svn_error_t *
FUNC7(void *baton,
                const void *key,
                apr_ssize_t klen,
                void *value,
                apr_pool_t *scratch_pool)
{
  merge_alias_baton_t *const mab = baton;
  authz_ace_t *aliased_ace = value;
  const char *alias = aliased_ace->name;
  const char *unaliased_key;
  const char *user;
  authz_ace_t *ace;

  user = FUNC5(mab->cb->parsed_aliases, alias);
  if (!user)
    return FUNC4(
        SVN_ERR_AUTHZ_INVALID_CONFIG, NULL,
        FUNC1("Alias '%s' was never defined"),
        alias);

  /* N.B.: The user name is always internalized,
     but the inverted key may not be. */
  if (!aliased_ace->inverted)
    unaliased_key = user;
  else
    {
      unaliased_key = FUNC2(mab->cb->parser_pool,
                                  "~", user, SVN_VA_NULL);
      unaliased_key = FUNC3(mab->cb, unaliased_key, -1);
    }

  ace = FUNC5(mab->aces, unaliased_key);
  if (!ace)
    {
      aliased_ace->name = user;
      FUNC6(mab->aces, unaliased_key, aliased_ace);
    }
  else
    {
      FUNC0(!ace->inverted == !aliased_ace->inverted);
      ace->access |= aliased_ace->access;
    }

  return SVN_NO_ERROR;
}