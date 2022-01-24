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
struct _citrus_memory_stream {int dummy; } ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct _citrus_memory_stream*) ; 
 int FUNC2 (struct _citrus_memory_stream*) ; 

void
FUNC3(struct _citrus_memory_stream *ms)
{
	int ch;

	while ((ch = FUNC2(ms)) != EOF) {
		if (!FUNC0(ch))
			break;
		FUNC1(ms);
	}
}