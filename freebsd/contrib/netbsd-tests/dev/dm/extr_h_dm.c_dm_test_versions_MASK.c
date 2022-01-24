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
struct plistref {int /*<<< orphan*/  pref_plist; } ;
typedef  int /*<<< orphan*/  prop_dictionary_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETBSD_DM_IOCTL ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct plistref*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,struct plistref*) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(void) {
	int fd;
	int error;
	prop_dictionary_t dict_in, dict_out;
	struct plistref prefp;
	char *xml;

	error = 0;
	
	error = FUNC7();
	if (error != 0)
		FUNC1(1, "Rump init failed");
	
	fd = FUNC10("/dev/mapper/control", O_RDWR, 0);
	if (fd == -1)
		FUNC1(1, "Open dm device failed");

	dict_in  = FUNC6("dm_version_cmd.plist");
	dict_out = FUNC2();
	
	FUNC4(dict_in, &prefp);
	
	error = FUNC9(fd, NETBSD_DM_IOCTL, &prefp);
	if (error < 0)
		FUNC1(1, "Dm control ioctl failed");

	dict_out = FUNC5(prefp.pref_plist);
	
	xml = FUNC3(dict_out);
	FUNC0(xml);

	FUNC8(fd);

	return error;
}