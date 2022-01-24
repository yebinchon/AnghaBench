#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int len; struct warc_s* str; } ;
struct warc_s {int /*<<< orphan*/  sver; TYPE_1__ pool; } ;
struct archive_read {TYPE_2__* format; } ;
struct TYPE_4__ {struct warc_s* data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct warc_s*) ; 

__attribute__((used)) static int
FUNC2(struct archive_read *a)
{
	struct warc_s *w = a->format->data;

	if (w->pool.len > 0U) {
		FUNC1(w->pool.str);
	}
	FUNC0(&w->sver);
	FUNC1(w);
	a->format->data = NULL;
	return (ARCHIVE_OK);
}