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
struct zip {int /*<<< orphan*/  hctx; scalar_t__ hctx_valid; int /*<<< orphan*/  cctx; scalar_t__ cctx_valid; int /*<<< orphan*/  entry; struct zip* buf; struct zip* buff; struct zip* next; struct zip* central_directory; } ;
struct cd_segment {int /*<<< orphan*/  hctx; scalar_t__ hctx_valid; int /*<<< orphan*/  cctx; scalar_t__ cctx_valid; int /*<<< orphan*/  entry; struct cd_segment* buf; struct cd_segment* buff; struct cd_segment* next; struct cd_segment* central_directory; } ;
struct archive_write {struct zip* format_data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zip*) ; 

__attribute__((used)) static int
FUNC4(struct archive_write *a)
{
	struct zip *zip;
	struct cd_segment *segment;

	zip = a->format_data;
	while (zip->central_directory != NULL) {
		segment = zip->central_directory;
		zip->central_directory = segment->next;
		FUNC3(segment->buff);
		FUNC3(segment);
	}
	FUNC3(zip->buf);
	FUNC1(zip->entry);
	if (zip->cctx_valid)
		FUNC0(&zip->cctx);
	if (zip->hctx_valid)
		FUNC2(&zip->hctx);
	/* TODO: Free opt_sconv, sconv_default */

	FUNC3(zip);
	a->format_data = NULL;
	return (ARCHIVE_OK);
}