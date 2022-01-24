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
struct archive_string_conv {int dummy; } ;
struct archive_string {scalar_t__ length; } ;

/* Variables and functions */
 int FUNC0 (struct archive_string*,void const*,size_t,struct archive_string_conv*) ; 

int
FUNC1(struct archive_string *as, const void *_p, size_t n,
    struct archive_string_conv *sc)
{
	as->length = 0;
	return (FUNC0(as, _p, n, sc));
}