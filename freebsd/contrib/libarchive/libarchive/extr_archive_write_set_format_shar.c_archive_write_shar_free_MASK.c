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
struct shar {int /*<<< orphan*/  quoted_name; int /*<<< orphan*/  work; struct shar* last_dir; int /*<<< orphan*/  entry; } ;
struct archive_write {int /*<<< orphan*/ * format_data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct shar*) ; 

__attribute__((used)) static int
FUNC3(struct archive_write *a)
{
	struct shar *shar;

	shar = (struct shar *)a->format_data;
	if (shar == NULL)
		return (ARCHIVE_OK);

	FUNC0(shar->entry);
	FUNC2(shar->last_dir);
	FUNC1(&(shar->work));
	FUNC1(&(shar->quoted_name));
	FUNC2(shar);
	a->format_data = NULL;
	return (ARCHIVE_OK);
}