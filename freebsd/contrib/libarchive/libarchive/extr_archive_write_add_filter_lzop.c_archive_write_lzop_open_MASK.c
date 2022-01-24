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
struct write_lzop {char compression_level; int /*<<< orphan*/  pdata; } ;
struct archive_write_filter {scalar_t__ data; } ;
struct archive_string {int /*<<< orphan*/  s; } ;

/* Variables and functions */
 int FUNC0 (struct archive_write_filter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_string*) ; 

__attribute__((used)) static int
FUNC5(struct archive_write_filter *f)
{
	struct write_lzop *data = (struct write_lzop *)f->data;
	struct archive_string as;
	int r;

	FUNC4(&as);
	FUNC2(&as, "lzop");
	/* Specify compression level. */
	if (data->compression_level > 0) {
		FUNC1(&as, ' ');
		FUNC1(&as, '-');
		FUNC1(&as, '0' + data->compression_level);
	}

	r = FUNC0(f, data->pdata, as.s);
	FUNC3(&as);
	return (r);
}