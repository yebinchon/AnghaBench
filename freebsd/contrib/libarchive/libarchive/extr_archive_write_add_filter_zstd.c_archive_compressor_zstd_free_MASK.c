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
struct TYPE_2__ {struct private_data* dst; } ;
struct private_data {int /*<<< orphan*/  pdata; TYPE_1__ out; int /*<<< orphan*/  cstream; } ;
struct archive_write_filter {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct private_data*) ; 

__attribute__((used)) static int
FUNC3(struct archive_write_filter *f)
{
	struct private_data *data = (struct private_data *)f->data;
#if HAVE_ZSTD_H && HAVE_LIBZSTD
	ZSTD_freeCStream(data->cstream);
	free(data->out.dst);
#else
	FUNC1(data->pdata);
#endif
	FUNC2(data);
	f->data = NULL;
	return (ARCHIVE_OK);
}