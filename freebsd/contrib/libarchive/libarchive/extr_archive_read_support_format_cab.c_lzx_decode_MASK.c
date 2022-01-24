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
struct lzx_stream {scalar_t__ avail_in; int /*<<< orphan*/  total_in; int /*<<< orphan*/  total_out; int /*<<< orphan*/  next_out; scalar_t__ avail_out; struct lzx_dec* ds; } ;
struct lzx_dec {int error; scalar_t__ state; int /*<<< orphan*/  br; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ ST_MAIN ; 
 int /*<<< orphan*/  FUNC0 (struct lzx_stream*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct lzx_stream*,int) ; 
 int FUNC2 (struct lzx_stream*,int) ; 

__attribute__((used)) static int
FUNC3(struct lzx_stream *strm, int last)
{
	struct lzx_dec *ds = strm->ds;
	int64_t avail_in;
	int r;

	if (ds->error)
		return (ds->error);

	avail_in = strm->avail_in;
	FUNC0(strm, &(ds->br));
	do {
		if (ds->state < ST_MAIN)
			r = FUNC2(strm, last);
		else {
			int64_t bytes_written = strm->avail_out;
			r = FUNC1(strm, last);
			bytes_written -= strm->avail_out;
			strm->next_out += bytes_written;
			strm->total_out += bytes_written;
		}
	} while (r == 100);
	strm->total_in += avail_in - strm->avail_in;
	return (r);
}