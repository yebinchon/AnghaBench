#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {TYPE_1__* editor; } ;
typedef  TYPE_2__ report_context_t ;
struct TYPE_7__ {int /*<<< orphan*/  dir_baton; TYPE_2__* ctx; } ;
typedef  TYPE_3__ dir_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* change_dir_prop ) (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC4(void *baton,
             const char *path,
             const char *ns,
             const char *name,
             const svn_string_t *val,
             apr_pool_t *scratch_pool)
{
  dir_baton_t *dir = baton;
  report_context_t *ctx = dir->ctx;
  const char *prop_name;

  prop_name = FUNC3(ns, name, scratch_pool);
  if (prop_name == NULL)
    return SVN_NO_ERROR;

  FUNC0(FUNC1(dir, scratch_pool));

  FUNC0(ctx->editor->change_dir_prop(dir->dir_baton,
                                       prop_name, val,
                                       scratch_pool));
  return SVN_NO_ERROR;
}