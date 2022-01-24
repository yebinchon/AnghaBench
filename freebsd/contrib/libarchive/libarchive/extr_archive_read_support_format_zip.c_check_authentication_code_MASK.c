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
typedef  int /*<<< orphan*/  uint8_t ;
struct zip {int /*<<< orphan*/  hctx; scalar_t__ hctx_valid; } ;
struct archive_read {int /*<<< orphan*/  archive; TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_FILE_FORMAT ; 
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int ARCHIVE_WARN ; 
 int /*<<< orphan*/  AUTH_CODE_SIZE ; 
 void* FUNC0 (struct archive_read*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_read*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct archive_read *a, const void *_p)
{
	struct zip *zip = (struct zip *)(a->format->data);

	/* Check authentication code. */
	if (zip->hctx_valid) {
		const void *p;
		uint8_t hmac[20];
		size_t hmac_len = 20;
		int cmp;

		FUNC2(&zip->hctx, hmac, &hmac_len);
		if (_p == NULL) {
			/* Read authentication code. */
			p = FUNC0(a, AUTH_CODE_SIZE, NULL);
			if (p == NULL) {
				FUNC3(&a->archive,
				    ARCHIVE_ERRNO_FILE_FORMAT,
				    "Truncated ZIP file data");
				return (ARCHIVE_FATAL);
			}
		} else {
			p = _p;
		}
		cmp = FUNC4(hmac, p, AUTH_CODE_SIZE);
		FUNC1(a, AUTH_CODE_SIZE);
		if (cmp != 0) {
			FUNC3(&a->archive,
			    ARCHIVE_ERRNO_MISC,
			    "ZIP bad Authentication code");
			return (ARCHIVE_WARN);
		}
	}
	return (ARCHIVE_OK);
}