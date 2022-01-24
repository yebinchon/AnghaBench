#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct so_list {char* so_original_name; char* so_name; struct so_list* next; TYPE_1__* lm_info; } ;
struct TYPE_2__ {scalar_t__ base_address; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct so_list*) ; 
 scalar_t__ kernel_file_addr ; 
 scalar_t__ linker_files_addr ; 
 int /*<<< orphan*/  FUNC2 (struct so_list*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ off_address ; 
 scalar_t__ off_filename ; 
 scalar_t__ off_next ; 
 scalar_t__ off_pathname ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char**,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 void* FUNC9 (int) ; 

__attribute__((used)) static struct so_list *
FUNC10 (void)
{
	struct so_list *head, **prev, *new;
	CORE_ADDR kld, kernel;
	char *path;
	int error;

	if (linker_files_addr == 0 || kernel_file_addr == 0 ||
	    off_address == 0 || off_filename == 0 || off_next == 0)
		return (NULL);

	head = NULL;
	prev = &head;

	/*
	 * Walk the list of linker files creating so_list entries for
	 * each non-kernel file.
	 */
	kernel = FUNC3(kernel_file_addr);
	for (kld = FUNC3(linker_files_addr); kld != 0;
	     kld = FUNC3(kld + off_next)) {
		/* Skip the main kernel file. */
		if (kld == kernel)
			continue;

		new = FUNC9(sizeof(*new));
		FUNC2(new, 0, sizeof(*new));

		new->lm_info = FUNC9(sizeof(*new->lm_info));
		new->lm_info->base_address = 0;

		/* Read the base filename and store it in so_original_name. */
		FUNC6(FUNC3(kld + off_filename),
		    &path, sizeof(new->so_original_name), &error);
		if (error != 0) {
			FUNC7("kld_current_sos: Can't read filename: %s\n",
			    FUNC4(error));
			FUNC1(new);
			continue;
		}
		FUNC5(new->so_original_name, path,
		    sizeof(new->so_original_name));
		FUNC8(path);

		/*
		 * Try to read the pathname (if it exists) and store
		 * it in so_name.
		 */
		if (FUNC0(new->so_original_name, new->so_name,
		    sizeof(new->so_name))) {
			/* we found the kld */;
		} else if (off_pathname != 0) {
			FUNC6(FUNC3(kld + off_pathname),
			    &path, sizeof(new->so_name), &error);
			if (error != 0) {
				FUNC7(
		    "kld_current_sos: Can't read pathname for \"%s\": %s\n",
				    new->so_original_name,
				    FUNC4(error));
				FUNC5(new->so_name, new->so_original_name,
				    sizeof(new->so_name));
			} else {
				FUNC5(new->so_name, path,
				    sizeof(new->so_name));
				FUNC8(path);
			}
		} else
			FUNC5(new->so_name, new->so_original_name,
			    sizeof(new->so_name));

		/* Read this kld's base address. */
		new->lm_info->base_address = FUNC3(kld + off_address);
		if (new->lm_info->base_address == 0) {
			FUNC7(
			    "kld_current_sos: Invalid address for kld \"%s\"",
			    new->so_original_name);
			FUNC1(new);
			continue;
		}

		/* Append to the list. */
		*prev = new;
		prev = &new->next;
	}

	return (head);
}