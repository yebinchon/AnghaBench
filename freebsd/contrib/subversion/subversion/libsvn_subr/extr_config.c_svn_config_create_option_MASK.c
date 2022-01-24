#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_boolean_t ;
struct TYPE_4__ {int /*<<< orphan*/  state; int /*<<< orphan*/ * x_value; void* value; void* hash_key; void* name; } ;
typedef  TYPE_1__ cfg_option_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 void* FUNC2 (void*) ; 
 int /*<<< orphan*/  option_state_needs_expanding ; 

__attribute__((used)) static void
FUNC3(cfg_option_t **opt,
                         const char *option,
                         const char *value,
                         svn_boolean_t option_names_case_sensitive,
                         apr_pool_t *pool)
{
  cfg_option_t *o;

  o = FUNC0(pool, sizeof(cfg_option_t));
  o->name = FUNC1(pool, option);
  if(option_names_case_sensitive)
    o->hash_key = o->name;
  else
    o->hash_key = FUNC2(FUNC1(pool, option));

  o->value = FUNC1(pool, value);
  o->x_value = NULL;
  o->state = option_state_needs_expanding;

  *opt = o;
}