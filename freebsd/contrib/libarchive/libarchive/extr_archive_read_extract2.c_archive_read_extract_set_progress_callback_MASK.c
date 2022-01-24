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
struct archive_read_extract {void (* extract_progress ) (void*) ;void* extract_progress_user_data; } ;
struct archive_read {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 struct archive_read_extract* FUNC0 (struct archive_read*) ; 

void
FUNC1(struct archive *_a,
    void (*progress_func)(void *), void *user_data)
{
	struct archive_read *a = (struct archive_read *)_a;
	struct archive_read_extract *extract = FUNC0(a);
	if (extract != NULL) {
		extract->extract_progress = progress_func;
		extract->extract_progress_user_data = user_data;
	}
}