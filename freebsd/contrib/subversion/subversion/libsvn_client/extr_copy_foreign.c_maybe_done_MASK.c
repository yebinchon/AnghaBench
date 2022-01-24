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
struct dir_baton_t {scalar_t__ users; int /*<<< orphan*/  pool; struct dir_baton_t* pb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC2(struct dir_baton_t *db)
{
  db->users--;

  if (db->users == 0)
    {
      struct dir_baton_t *pb = db->pb;

      FUNC1(db->pool);

      if (pb)
        FUNC0(FUNC2(pb));
    }

  return SVN_NO_ERROR;
}