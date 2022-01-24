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
typedef  int /*<<< orphan*/  uintmax_t ;
struct sbuf {int dummy; } ;
struct mt_status_entry {int var_type; int /*<<< orphan*/  value; int /*<<< orphan*/  value_unsigned; int /*<<< orphan*/  value_signed; } ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
#define  MT_TYPE_INT 129 
#define  MT_TYPE_UINT 128 
 int /*<<< orphan*/  FUNC0 (struct sbuf*,char*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct sbuf *sb, struct mt_status_entry *entry, char *fmt)
{
	switch(entry->var_type) {
	case MT_TYPE_INT:
		if (fmt != NULL)
			FUNC0(sb, fmt, (intmax_t)entry->value_signed);
		else
			FUNC0(sb, "%jd",
				    (intmax_t)entry->value_signed);
		break;
	case MT_TYPE_UINT:
		if (fmt != NULL)
			FUNC0(sb, fmt, (uintmax_t)entry->value_unsigned);
		else
			FUNC0(sb, "%ju",
				    (uintmax_t)entry->value_unsigned);
		break;
	default:
		if (fmt != NULL)
			FUNC0(sb, fmt, entry->value);
		else
			FUNC0(sb, "%s", entry->value);
		break;
	}
}