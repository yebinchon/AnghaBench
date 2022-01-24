#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lha {int /*<<< orphan*/  ws; int /*<<< orphan*/  gname; int /*<<< orphan*/  uname; int /*<<< orphan*/  filename; int /*<<< orphan*/  dirname; int /*<<< orphan*/  strm; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lha*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct archive_read *a)
{
	struct lha *lha = (struct lha *)(a->format->data);

	FUNC3(&(lha->strm));
	FUNC0(&(lha->dirname));
	FUNC0(&(lha->filename));
	FUNC0(&(lha->uname));
	FUNC0(&(lha->gname));
	FUNC1(&(lha->ws));
	FUNC2(lha);
	(a->format->data) = NULL;
	return (ARCHIVE_OK);
}