#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_9__ {int /*<<< orphan*/  parsed_aliases; int /*<<< orphan*/  parser_pool; } ;
typedef  TYPE_2__ ctor_baton_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_AUTHZ_INVALID_CONFIG ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,scalar_t__,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char const*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 

__attribute__((used)) static svn_error_t *
FUNC8(ctor_baton_t *cb,
                     svn_stringbuf_t *option, svn_stringbuf_t *value)
{
  const char *alias;
  apr_size_t alias_len;
  const char *user;

  if (FUNC6("@$&*~", *option->data))
    return FUNC7(
        SVN_ERR_AUTHZ_INVALID_CONFIG, NULL,
        FUNC0("Alias name '%s' may not begin with '%c'"),
        option->data, *option->data);

  /* Decorate the name to make lookups consistent. */
  alias = FUNC3(cb->parser_pool, "&", option->data, SVN_VA_NULL);
  alias_len = option->len + 1;
  if (FUNC1(cb->parsed_aliases, alias, alias_len))
    return FUNC7(
        SVN_ERR_AUTHZ_INVALID_CONFIG, NULL,
        FUNC0("Can't override definition of alias '%s'"),
        alias);

  user = FUNC4(cb, value->data, value->len);
  FUNC2(cb->parsed_aliases, alias, alias_len, user);

  /* Prepare the global rights struct for this user. */
  FUNC5(cb, user);
  return SVN_NO_ERROR;
}