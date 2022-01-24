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
typedef  int /*<<< orphan*/  parsed_acl_t ;
struct TYPE_5__ {int /*<<< orphan*/ * parser_pool; int /*<<< orphan*/  rule_string_buffer; int /*<<< orphan*/  rule_path_buffer; int /*<<< orphan*/ * current_acl; int /*<<< orphan*/  parsed_acls; void* parsed_aliases; void* parsed_groups; void* parsed_rules; void* in_aliases; void* in_groups; void* parsing_groups; int /*<<< orphan*/ * section; void* sections; void* strings; TYPE_2__* authz; } ;
typedef  TYPE_1__ ctor_baton_t ;
struct TYPE_6__ {int /*<<< orphan*/ * pool; void* user_rights; int /*<<< orphan*/  authn_rights; int /*<<< orphan*/  anon_rights; } ;
typedef  TYPE_2__ authz_full_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  anon_access_token ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  authn_access_token ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const) ; 
 void* FUNC4 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ * const) ; 

__attribute__((used)) static ctor_baton_t *
FUNC8(apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  apr_pool_t *const parser_pool = FUNC6(scratch_pool);
  ctor_baton_t *const cb = FUNC1(parser_pool, sizeof(*cb));

  authz_full_t *const authz = FUNC1(result_pool, sizeof(*authz));
  FUNC2(&authz->anon_rights, anon_access_token, result_pool);
  FUNC2(&authz->authn_rights, authn_access_token, result_pool);
  authz->user_rights = FUNC4(result_pool);
  authz->pool = result_pool;

  cb->authz = authz;
  cb->strings = FUNC4(parser_pool);

  cb->sections = FUNC4(parser_pool);
  cb->section = NULL;
  cb->parsing_groups = FALSE;
  cb->in_groups = FALSE;
  cb->in_aliases = FALSE;

  cb->parsed_rules = FUNC4(parser_pool);
  cb->parsed_groups = FUNC4(parser_pool);
  cb->parsed_aliases = FUNC4(parser_pool);
  cb->parsed_acls = FUNC0(parser_pool, 64, sizeof(parsed_acl_t));
  cb->current_acl = NULL;

  FUNC5(&cb->rule_path_buffer, 0, parser_pool);
  cb->rule_string_buffer = FUNC7(parser_pool);

  cb->parser_pool = parser_pool;

  FUNC3(cb);

  return cb;
}