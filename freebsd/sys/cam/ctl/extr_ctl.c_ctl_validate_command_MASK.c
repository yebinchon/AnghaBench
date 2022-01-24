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
typedef  union ctl_io {int dummy; } ctl_io ;
typedef  int uint8_t ;
struct ctl_scsiio {int* cdb; } ;
struct ctl_cmd_entry {int length; int* usage; int /*<<< orphan*/ * execute; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (union ctl_io*) ; 
 struct ctl_cmd_entry* FUNC2 (struct ctl_scsiio*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_scsiio*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_scsiio*) ; 
 int FUNC5 (int) ; 

const struct ctl_cmd_entry *
FUNC6(struct ctl_scsiio *ctsio)
{
	const struct ctl_cmd_entry *entry;
	int i, sa;
	uint8_t diff;

	entry = FUNC2(ctsio, &sa);
	if (entry->execute == NULL) {
		if (sa)
			FUNC3(ctsio,
					      /*sks_valid*/ 1,
					      /*command*/ 1,
					      /*field*/ 1,
					      /*bit_valid*/ 1,
					      /*bit*/ 4);
		else
			FUNC4(ctsio);
		FUNC1((union ctl_io *)ctsio);
		return (NULL);
	}
	FUNC0(entry->length > 0,
	    ("Not defined length for command 0x%02x/0x%02x",
	     ctsio->cdb[0], ctsio->cdb[1]));
	for (i = 1; i < entry->length; i++) {
		diff = ctsio->cdb[i] & ~entry->usage[i - 1];
		if (diff == 0)
			continue;
		FUNC3(ctsio,
				      /*sks_valid*/ 1,
				      /*command*/ 1,
				      /*field*/ i,
				      /*bit_valid*/ 1,
				      /*bit*/ FUNC5(diff) - 1);
		FUNC1((union ctl_io *)ctsio);
		return (NULL);
	}
	return (entry);
}