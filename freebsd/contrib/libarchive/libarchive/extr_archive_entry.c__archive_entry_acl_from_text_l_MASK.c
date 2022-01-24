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
struct archive_entry {int /*<<< orphan*/  acl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int,struct archive_string_conv*) ; 

int
FUNC1(struct archive_entry *entry, const char *text,
    int type, struct archive_string_conv *sc)
{
	return (FUNC0(&entry->acl, text, type, sc));
}