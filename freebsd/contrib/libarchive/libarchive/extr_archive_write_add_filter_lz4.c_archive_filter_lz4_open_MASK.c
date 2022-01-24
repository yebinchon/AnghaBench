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
struct private_data {scalar_t__ compression_level; scalar_t__ block_maximum_size; scalar_t__ stream_checksum; scalar_t__ block_independence; int /*<<< orphan*/  pdata; scalar_t__ block_checksum; } ;
struct archive_write_filter {int /*<<< orphan*/  write; scalar_t__ data; } ;
struct archive_string {int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int FUNC0 (struct archive_write_filter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  archive_filter_lz4_write ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_string*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_string*) ; 

__attribute__((used)) static int
FUNC6(struct archive_write_filter *f)
{
	struct private_data *data = (struct private_data *)f->data;
	struct archive_string as;
	int r;

	FUNC5(&as);
	FUNC3(&as, "lz4 -z -q -q");

	/* Specify a compression level. */
	if (data->compression_level > 0) {
		FUNC2(&as, " -");
		FUNC1(&as, '0' + data->compression_level);
	}
	/* Specify a block size. */
	FUNC2(&as, " -B");
	FUNC1(&as, '0' + data->block_maximum_size);

	if (data->block_checksum)
		FUNC2(&as, " -BX");
	if (data->stream_checksum == 0)
		FUNC2(&as, " --no-frame-crc");
	if (data->block_independence == 0)
		FUNC2(&as, " -BD");

	f->write = archive_filter_lz4_write;

	r = FUNC0(f, data->pdata, as.s);
	FUNC4(&as);
	return (r);
}