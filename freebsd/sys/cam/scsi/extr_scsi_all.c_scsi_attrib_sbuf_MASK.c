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
typedef  int uint32_t ;
struct scsi_mam_attribute_header {int /*<<< orphan*/  id; } ;
struct scsi_attrib_table_entry {int (* to_str ) (struct sbuf*,struct scsi_mam_attribute_header*,int,int /*<<< orphan*/ ,int,char*,int) ;int /*<<< orphan*/ * suffix; int /*<<< orphan*/  flags; int /*<<< orphan*/ * desc; } ;
struct sbuf {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct scsi_attrib_table_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sbuf*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*,int,struct scsi_mam_attribute_header*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sbuf*,int,struct scsi_mam_attribute_header*,int,char*,int) ; 
 struct scsi_attrib_table_entry* FUNC6 (struct scsi_attrib_table_entry*,size_t,int) ; 
 struct scsi_attrib_table_entry* scsi_mam_attr_table ; 
 int FUNC7 (struct sbuf*,struct scsi_mam_attribute_header*,int,int /*<<< orphan*/ ,int,char*,int) ; 
 int FUNC8 (struct sbuf*,struct scsi_mam_attribute_header*,int,int /*<<< orphan*/ ,int,char*,int) ; 

int
FUNC9(struct sbuf *sb, struct scsi_mam_attribute_header *hdr,
		 uint32_t valid_len, struct scsi_attrib_table_entry *user_table,
		 size_t num_user_entries, int prefer_user_table,
		 uint32_t output_flags, char *error_str, int error_str_len)
{
	int retval;
	struct scsi_attrib_table_entry *table1 = NULL, *table2 = NULL;
	struct scsi_attrib_table_entry *entry = NULL;
	size_t table1_size = 0, table2_size = 0;
	uint32_t id;

	retval = 0;

	if (valid_len < sizeof(*hdr)) {
		retval = 1;
		goto bailout;
	}

	id = FUNC3(hdr->id);

	if (user_table != NULL) {
		if (prefer_user_table != 0) {
			table1 = user_table;
			table1_size = num_user_entries;
			table2 = scsi_mam_attr_table;
			table2_size = FUNC0(scsi_mam_attr_table);
		} else {
			table1 = scsi_mam_attr_table;
			table1_size = FUNC0(scsi_mam_attr_table);
			table2 = user_table;
			table2_size = num_user_entries;
		}
	} else {
		table1 = scsi_mam_attr_table;
		table1_size = FUNC0(scsi_mam_attr_table);
	}

	entry = FUNC6(table1, table1_size, id);
	if (entry != NULL) {
		FUNC4(sb, output_flags, hdr, valid_len,
					entry->desc);
		if (entry->to_str == NULL)
			goto print_default;
		retval = entry->to_str(sb, hdr, valid_len, entry->flags,
				       output_flags, error_str, error_str_len);
		goto bailout;
	}
	if (table2 != NULL) {
		entry = FUNC6(table2, table2_size, id);
		if (entry != NULL) {
			if (entry->to_str == NULL)
				goto print_default;

			FUNC4(sb, output_flags, hdr,
						valid_len, entry->desc);
			retval = entry->to_str(sb, hdr, valid_len, entry->flags,
					       output_flags, error_str,
					       error_str_len);
			goto bailout;
		}
	}

	FUNC4(sb, output_flags, hdr, valid_len, NULL);

print_default:
	retval = FUNC5(sb, valid_len, hdr, output_flags,
	    error_str, error_str_len);
bailout:
	if (retval == 0) {
	 	if ((entry != NULL)
		 && (entry->suffix != NULL))
			FUNC1(sb, " %s", entry->suffix);

		FUNC2(sb);
		FUNC1(sb, "\n");
	}

	return (retval);
}