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
struct dir_baton {int /*<<< orphan*/  pool; struct dir_baton* parent_baton; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC2(struct dir_baton *db)
{
  db->ref_count--;

  if (!db->ref_count)
    {
      struct dir_baton *pb = db->parent_baton;

      FUNC1(db->pool);

      if (pb)
        FUNC0(FUNC2(pb));
    }

  return SVN_NO_ERROR;
}