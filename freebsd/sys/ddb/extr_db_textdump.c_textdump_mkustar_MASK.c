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
typedef  int u_int ;
struct ustar_header {int /*<<< orphan*/  uh_ustar; scalar_t__ uh_type; int /*<<< orphan*/  uh_mtime; int /*<<< orphan*/  uh_group; int /*<<< orphan*/  uh_owner; int /*<<< orphan*/  uh_tar_group; int /*<<< orphan*/  uh_tar_owner; int /*<<< orphan*/  uh_size; int /*<<< orphan*/  uh_mode; int /*<<< orphan*/  uh_filename; } ;

/* Variables and functions */
 char const* TAR_GID ; 
 char const* TAR_GROUP ; 
 char const* TAR_MODE ; 
 char const* TAR_UID ; 
 char const* TAR_USER ; 
 char const* TAR_USTAR ; 
 int /*<<< orphan*/  FUNC0 (struct ustar_header*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ textdump_error ; 
 scalar_t__ time_second ; 
 int /*<<< orphan*/  FUNC4 (struct ustar_header*) ; 

void
FUNC5(char *block_buffer, const char *filename, u_int size)
{
	struct ustar_header *uhp;

#ifdef TEXTDUMP_VERBOSE
	if (textdump_error == 0)
		printf("textdump: creating '%s'.\n", filename);
#endif
	uhp = (struct ustar_header *)block_buffer;
	FUNC0(uhp, sizeof(*uhp));
	FUNC3(uhp->uh_filename, filename, sizeof(uhp->uh_filename));
	FUNC3(uhp->uh_mode, TAR_MODE, sizeof(uhp->uh_mode));
	FUNC2(uhp->uh_size, sizeof(uhp->uh_size), "%o", size);
	FUNC3(uhp->uh_tar_owner, TAR_UID, sizeof(uhp->uh_tar_owner));
	FUNC3(uhp->uh_tar_group, TAR_GID, sizeof(uhp->uh_tar_group));
	FUNC3(uhp->uh_owner, TAR_USER, sizeof(uhp->uh_owner));
	FUNC3(uhp->uh_group, TAR_GROUP, sizeof(uhp->uh_group));
	FUNC2(uhp->uh_mtime, sizeof(uhp->uh_mtime), "%lo",
	    (unsigned long)time_second);
	uhp->uh_type = 0;
	FUNC3(uhp->uh_ustar, TAR_USTAR, sizeof(uhp->uh_ustar));
	FUNC4(uhp);
}