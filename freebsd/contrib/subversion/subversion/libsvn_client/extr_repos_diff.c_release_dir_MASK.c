#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct dir_baton {scalar_t__ users; int /*<<< orphan*/  pool; struct dir_baton* parent_baton; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC3(struct dir_baton *db)
{
  FUNC1(db->users > 0);

  db->users--;
  if (db->users)
     return SVN_NO_ERROR;

  {
    struct dir_baton *pb = db->parent_baton;

    FUNC2(db->pool);

    if (pb != NULL)
      FUNC0(FUNC3(pb));
  }

  return SVN_NO_ERROR;
}