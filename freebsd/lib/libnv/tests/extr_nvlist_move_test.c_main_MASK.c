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
typedef  int /*<<< orphan*/  const nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int) ; 
 void* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 
 int FUNC8 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC9 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC10 (int /*<<< orphan*/  const*,char*) ; 
 int FUNC11 (int /*<<< orphan*/  const*,char*) ; 
 void* FUNC12 (int /*<<< orphan*/  const*,char*,size_t*) ; 
 int FUNC13 (int /*<<< orphan*/  const*,char*) ; 
 void* FUNC14 (int /*<<< orphan*/  const*,char*) ; 
 void* FUNC15 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/  const*,char*,void*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/  const*,char*,void*) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 void* FUNC21 (char*) ; 

int
FUNC22(void)
{
	const nvlist_t *cnvl;
	nvlist_t *nvl;
	void *ptr;
	size_t size;
	int fd;

	FUNC20("1..52\n");

	nvl = FUNC5(0);

	FUNC0(!FUNC11(nvl, "nvlist/string/"));
	ptr = FUNC21("");
	FUNC0(ptr != NULL);
	FUNC19(nvl, "nvlist/string/", ptr);
	FUNC0(FUNC7(nvl) == 0);
	FUNC0(FUNC11(nvl, "nvlist/string/"));
	FUNC0(ptr == FUNC15(nvl, "nvlist/string/"));

	FUNC0(!FUNC11(nvl, "nvlist/string/x"));
	ptr = FUNC21("x");
	FUNC0(ptr != NULL);
	FUNC19(nvl, "nvlist/string/x", ptr);
	FUNC0(FUNC7(nvl) == 0);
	FUNC0(FUNC11(nvl, "nvlist/string/x"));
	FUNC0(ptr == FUNC15(nvl, "nvlist/string/x"));

	FUNC0(!FUNC11(nvl,
	    "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
	ptr = FUNC21("abcdefghijklmnopqrstuvwxyz");
	FUNC0(ptr != NULL);
	FUNC19(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz",
	    ptr);
	FUNC0(FUNC7(nvl) == 0);
	FUNC0(FUNC11(nvl,
	    "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
	FUNC0(ptr ==
	    FUNC15(nvl, "nvlist/string/abcdefghijklmnopqrstuvwxyz"));

	FUNC0(!FUNC9(nvl,
	    "nvlist/descriptor/STDERR_FILENO"));
	fd = FUNC1(STDERR_FILENO);
	FUNC0(fd >= 0);
	FUNC17(nvl, "nvlist/descriptor/STDERR_FILENO", fd);
	FUNC0(FUNC7(nvl) == 0);
	FUNC0(FUNC9(nvl, "nvlist/descriptor/STDERR_FILENO"));
	FUNC0(fd ==
	    FUNC13(nvl, "nvlist/descriptor/STDERR_FILENO"));

	FUNC0(!FUNC8(nvl, "nvlist/binary/x"));
	ptr = FUNC2(1);
	FUNC0(ptr != NULL);
	FUNC3(ptr, "x", 1);
	FUNC16(nvl, "nvlist/binary/x", ptr, 1);
	FUNC0(FUNC7(nvl) == 0);
	FUNC0(FUNC8(nvl, "nvlist/binary/x"));
	FUNC0(ptr == FUNC12(nvl, "nvlist/binary/x", NULL));
	FUNC0(ptr == FUNC12(nvl, "nvlist/binary/x", &size));
	FUNC0(size == 1);

	FUNC0(!FUNC8(nvl,
	    "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));
	ptr = FUNC2(sizeof("abcdefghijklmnopqrstuvwxyz"));
	FUNC0(ptr != NULL);
	FUNC3(ptr, "abcdefghijklmnopqrstuvwxyz",
	    sizeof("abcdefghijklmnopqrstuvwxyz"));
	FUNC16(nvl, "nvlist/binary/abcdefghijklmnopqrstuvwxyz",
	    ptr, sizeof("abcdefghijklmnopqrstuvwxyz"));
	FUNC0(FUNC7(nvl) == 0);
	FUNC0(FUNC8(nvl,
	    "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));
	FUNC0(ptr == FUNC12(nvl,
	    "nvlist/binary/abcdefghijklmnopqrstuvwxyz", NULL));
	FUNC0(ptr == FUNC12(nvl,
	    "nvlist/binary/abcdefghijklmnopqrstuvwxyz", &size));
	FUNC0(size == sizeof("abcdefghijklmnopqrstuvwxyz"));

	FUNC0(!FUNC10(nvl, "nvlist/nvlist"));
	ptr = FUNC4(nvl);
	FUNC0(ptr != NULL);
	FUNC18(nvl, "nvlist/nvlist", ptr);
	FUNC0(FUNC7(nvl) == 0);
	FUNC0(FUNC10(nvl, "nvlist/nvlist"));
	FUNC0(ptr == FUNC14(nvl, "nvlist/nvlist"));

	FUNC0(FUNC11(nvl, "nvlist/string/"));
	FUNC0(FUNC11(nvl, "nvlist/string/x"));
	FUNC0(FUNC11(nvl,
	    "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
	FUNC0(FUNC9(nvl, "nvlist/descriptor/STDERR_FILENO"));
	FUNC0(FUNC8(nvl, "nvlist/binary/x"));
	FUNC0(FUNC8(nvl,
	    "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));
	FUNC0(FUNC10(nvl, "nvlist/nvlist"));

	cnvl = FUNC14(nvl, "nvlist/nvlist");
	FUNC0(FUNC11(cnvl, "nvlist/string/"));
	FUNC0(FUNC11(cnvl, "nvlist/string/x"));
	FUNC0(FUNC11(cnvl,
	    "nvlist/string/abcdefghijklmnopqrstuvwxyz"));
	FUNC0(FUNC9(cnvl,
	    "nvlist/descriptor/STDERR_FILENO"));
	FUNC0(FUNC8(cnvl, "nvlist/binary/x"));
	FUNC0(FUNC8(cnvl,
	    "nvlist/binary/abcdefghijklmnopqrstuvwxyz"));

	FUNC6(nvl);

	return (0);
}