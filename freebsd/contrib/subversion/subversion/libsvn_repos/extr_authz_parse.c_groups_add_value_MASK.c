#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * data; scalar_t__ len; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_8__ {int /*<<< orphan*/  parser_pool; int /*<<< orphan*/  parsed_groups; scalar_t__ parsing_groups; int /*<<< orphan*/  in_groups; } ;
typedef  TYPE_2__ ctor_baton_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_AUTHZ_INVALID_CONFIG ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__* const,char const*,scalar_t__) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 

__attribute__((used)) static svn_error_t *
FUNC9(void *baton, svn_stringbuf_t *section,
                 svn_stringbuf_t *option, svn_stringbuf_t *value)
{
  ctor_baton_t *const cb = baton;
  const char *group;
  apr_size_t group_len;

  FUNC0(cb->in_groups);

  if (FUNC6("@$&*~", *option->data))
    {
      if (cb->parsing_groups)
        return FUNC8(
            SVN_ERR_AUTHZ_INVALID_CONFIG, NULL,
            FUNC1("Global group name '%s' may not begin with '%c'"),
            option->data, *option->data);
      else
        return FUNC8(
            SVN_ERR_AUTHZ_INVALID_CONFIG, NULL,
            FUNC1("Group name '%s' may not begin with '%c'"),
            option->data, *option->data);
    }

  /* Decorate the name to make lookups consistent. */
  group = FUNC4(cb->parser_pool, "@", option->data, SVN_VA_NULL);
  group_len = option->len + 1;
  if (FUNC2(cb->parsed_groups, group, group_len))
    {
      if (cb->parsing_groups)
        return FUNC8(SVN_ERR_AUTHZ_INVALID_CONFIG, NULL,
                                 FUNC1("Can't override definition"
                                   " of global group '%s'"),
                                 group);
      else
        return FUNC8(SVN_ERR_AUTHZ_INVALID_CONFIG, NULL,
                                 FUNC1("Can't override definition"
                                   " of group '%s'"),
                                 group);
    }

  /* We store the whole group definition, so that we can use the
     temporary groups in the baton hash later to fully expand group
     memberships.
     At this point, we can finally internalize the group name. */
  FUNC3(cb->parsed_groups,
               FUNC5(cb, group, group_len), group_len,
               FUNC7(value->data, ",", TRUE, cb->parser_pool));

  return SVN_NO_ERROR;
}