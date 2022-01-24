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
struct evbuffer_file_segment {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  file_segment_cleanup_cb_called_count ; 
 struct evbuffer_file_segment const* file_segment_cleanup_cb_called_with ; 
 void* file_segment_cleanup_cb_called_with_arg ; 
 int file_segment_cleanup_cb_called_with_flags ; 

__attribute__((used)) static void
FUNC0(struct evbuffer_file_segment const* seg, int flags, void* arg)
{
	++file_segment_cleanup_cb_called_count;
	file_segment_cleanup_cb_called_with = seg;
	file_segment_cleanup_cb_called_with_flags = flags;
	file_segment_cleanup_cb_called_with_arg = arg;
}