#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct TYPE_8__ {TYPE_3__* token; int /*<<< orphan*/ * pool; int /*<<< orphan*/ * dstream; int /*<<< orphan*/  is_file; void* baton; } ;
typedef  TYPE_1__ ra_svn_token_entry_t ;
struct TYPE_9__ {TYPE_1__* last_token; int /*<<< orphan*/  tokens; } ;
typedef  TYPE_2__ ra_svn_driver_state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ra_svn_token_entry_t *FUNC3(ra_svn_driver_state_t *ds,
                                         void *baton,
                                         svn_string_t *token,
                                         svn_boolean_t is_file,
                                         apr_pool_t *pool)
{
  ra_svn_token_entry_t *entry;

  entry = FUNC1(pool, sizeof(*entry));
  entry->token = FUNC2(token, pool);
  entry->baton = baton;
  entry->is_file = is_file;
  entry->dstream = NULL;
  entry->pool = pool;

  FUNC0(ds->tokens, entry->token->data, entry->token->len, entry);
  ds->last_token = entry;

  return entry;
}