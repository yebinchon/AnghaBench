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
struct scsi_nv {char* name; } ;
typedef  int /*<<< orphan*/  scsi_nv_status ;
typedef  int scsi_nv_flags ;

/* Variables and functions */
 int /*<<< orphan*/  SCSI_NV_AMBIGUOUS ; 
 int SCSI_NV_FLAG_IG_CASE ; 
 int /*<<< orphan*/  SCSI_NV_FOUND ; 
 int /*<<< orphan*/  SCSI_NV_NOT_FOUND ; 
 size_t FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*,size_t) ; 
 scalar_t__ FUNC2 (char*,char*,size_t) ; 

scsi_nv_status
FUNC3(struct scsi_nv *table, int num_table_entries,
	    char *name, int *table_entry, scsi_nv_flags flags)
{
	int i, num_matches = 0;

	for (i = 0; i < num_table_entries; i++) {
		size_t table_len, name_len;

		table_len = FUNC0(table[i].name);
		name_len = FUNC0(name);

		if ((((flags & SCSI_NV_FLAG_IG_CASE) != 0)
		  && (FUNC1(table[i].name, name, name_len) == 0))
		|| (((flags & SCSI_NV_FLAG_IG_CASE) == 0)
		 && (FUNC2(table[i].name, name, name_len) == 0))) {
			*table_entry = i;

			/*
			 * Check for an exact match.  If we have the same
			 * number of characters in the table as the argument,
			 * and we already know they're the same, we have
			 * an exact match.
		 	 */
			if (table_len == name_len)
				return (SCSI_NV_FOUND);

			/*
			 * Otherwise, bump up the number of matches.  We'll
			 * see later how many we have.
			 */
			num_matches++;
		}
	}

	if (num_matches > 1)
		return (SCSI_NV_AMBIGUOUS);
	else if (num_matches == 1)
		return (SCSI_NV_FOUND);
	else
		return (SCSI_NV_NOT_FOUND);
}