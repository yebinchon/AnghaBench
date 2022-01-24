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
struct write_lrzip {int compression; scalar_t__ compression_level; int /*<<< orphan*/  pdata; } ;
struct archive_write_filter {scalar_t__ data; } ;
struct archive_string {int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int FUNC0 (struct archive_write_filter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_string*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_string*) ; 
#define  bzip2 133 
#define  gzip 132 
#define  lzma 131 
#define  lzo 130 
#define  none 129 
#define  zpaq 128 

__attribute__((used)) static int
FUNC6(struct archive_write_filter *f)
{
	struct write_lrzip *data = (struct write_lrzip *)f->data;
	struct archive_string as;
	int r;

	FUNC5(&as);
	FUNC3(&as, "lrzip -q");

	/* Specify compression type. */
	switch (data->compression) {
	case lzma:/* default compression */
		break;
	case bzip2:
		FUNC2(&as, " -b");
		break;
	case gzip:
		FUNC2(&as, " -g");
		break;
	case lzo:
		FUNC2(&as, " -l");
		break;
	case none:
		FUNC2(&as, " -n");
		break;
	case zpaq:
		FUNC2(&as, " -z");
		break;
	}

	/* Specify compression level. */
	if (data->compression_level > 0) {
		FUNC2(&as, " -L ");
		FUNC1(&as, '0' + data->compression_level);
	}

	r = FUNC0(f, data->pdata, as.s);
	FUNC4(&as);
	return (r);
}