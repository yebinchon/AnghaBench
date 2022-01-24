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
struct archive_write {int /*<<< orphan*/  archive; scalar_t__ format_data; } ;
struct TYPE_2__ {struct _7zip* props; } ;
struct _7zip {scalar_t__ temp_fd; TYPE_1__ coder; int /*<<< orphan*/  stream; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct _7zip*) ; 
 int /*<<< orphan*/  FUNC3 (struct _7zip*) ; 

__attribute__((used)) static int
FUNC4(struct archive_write *a)
{
	struct _7zip *zip = (struct _7zip *)a->format_data;

	/* Close the temporary file. */
	if (zip->temp_fd >= 0)
		FUNC0(zip->temp_fd);

	FUNC2(zip);
	FUNC1(&(a->archive), &(zip->stream));
	FUNC3(zip->coder.props);
	FUNC3(zip);

	return (ARCHIVE_OK);
}