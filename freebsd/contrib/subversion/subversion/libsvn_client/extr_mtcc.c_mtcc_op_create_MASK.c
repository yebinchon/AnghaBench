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
struct TYPE_4__ {char* name; int /*<<< orphan*/  src_rev; int /*<<< orphan*/  children; int /*<<< orphan*/  kind; } ;
typedef  TYPE_1__ mtcc_op_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  OP_ADD_DIR ; 
 int /*<<< orphan*/  OP_ADD_FILE ; 
 int /*<<< orphan*/  OP_OPEN_DIR ; 
 int /*<<< orphan*/  OP_OPEN_FILE ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static mtcc_op_t *
FUNC3(const char *name,
               svn_boolean_t add,
               svn_boolean_t directory,
               apr_pool_t *result_pool)
{
  mtcc_op_t *op;

  op = FUNC1(result_pool, sizeof(*op));
  op->name = name ? FUNC2(result_pool, name) : "";

  if (add)
    op->kind = directory ? OP_ADD_DIR : OP_ADD_FILE;
  else
    op->kind = directory ? OP_OPEN_DIR : OP_OPEN_FILE;

  if (directory)
    op->children = FUNC0(result_pool, 4, sizeof(mtcc_op_t *));

  op->src_rev = SVN_INVALID_REVNUM;

  return op;
}