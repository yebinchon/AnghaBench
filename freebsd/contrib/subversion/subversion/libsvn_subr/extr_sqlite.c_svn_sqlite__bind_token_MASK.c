#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_token_map_t ;
struct TYPE_3__ {int /*<<< orphan*/  db; int /*<<< orphan*/  s3stmt; } ;
typedef  TYPE_1__ svn_sqlite__stmt_t ;
typedef  int /*<<< orphan*/  svn_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char const*,int,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/  const*,int) ; 

svn_error_t *
FUNC3(svn_sqlite__stmt_t *stmt,
                       int slot,
                       const svn_token_map_t *map,
                       int value)
{
  const char *word = FUNC2(map, value);

  FUNC0(FUNC1(stmt->s3stmt, slot, word, -1, SQLITE_STATIC),
             stmt->db);
  return SVN_NO_ERROR;
}