#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {char* pr_mapname; } ;
struct map_info {TYPE_1__ map; struct file_info* file; } ;
struct file_info {int fd; int /*<<< orphan*/ * elf; int /*<<< orphan*/  ehdr; } ;
typedef  TYPE_1__ prmap_t ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  crc ;
struct TYPE_9__ {int d_size; char* d_buf; } ;
struct TYPE_8__ {scalar_t__ sh_type; int /*<<< orphan*/  sh_name; } ;
typedef  TYPE_2__ GElf_Shdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_3__ Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  ELF_C_READ ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 char* PATH_DEBUG_DIR ; 
 int PATH_MAX ; 
 scalar_t__ SHT_PROGBITS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct file_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC15 (char*,int) ; 
 int FUNC16 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,char*) ; 
 scalar_t__ FUNC18 (char const*,char*) ; 
 int FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 int FUNC21 (char*,int) ; 

__attribute__((used)) static int
FUNC22(struct map_info *mapping)
{
	char path[PATH_MAX];
	GElf_Shdr shdr;
	Elf *e, *e2;
	Elf_Data *data;
	Elf_Scn *scn;
	struct file_info *file;
	prmap_t *map;
	const char *debugfile, *scnname;
	size_t ndx;
	uint32_t crc;
	int fd, fd2;

	if (mapping->map.pr_mapname[0] == '\0')
		return (-1); /* anonymous object */
	if (mapping->file->elf != NULL)
		return (0); /* already loaded */

	file = mapping->file;
	map = &mapping->map;
	if ((fd = FUNC15(map->pr_mapname, O_RDONLY | O_CLOEXEC)) < 0) {
		FUNC0("ERROR: open %s failed", map->pr_mapname);
		return (-1);
	}
	if ((e = FUNC4(fd, ELF_C_READ, NULL)) == NULL) {
		FUNC1("ERROR: elf_begin() failed: %s", FUNC6(-1));
		goto err;
	}
	if (FUNC11(e, &file->ehdr) != &file->ehdr) {
		FUNC1("ERROR: elf_getehdr() failed: %s", FUNC6(-1));
		goto err;
	}

	scn = NULL;
	while ((scn = FUNC9(e, scn)) != NULL) {
		if (FUNC12(scn, &shdr) != &shdr) {
			FUNC1("ERROR: gelf_getshdr failed: %s",
			    FUNC6(-1));
			goto err;
		}
		if (shdr.sh_type != SHT_PROGBITS)
			continue;
		if (FUNC8(e, &ndx) != 0) {
			FUNC1("ERROR: elf_getshdrstrndx failed: %s",
			    FUNC6(-1));
			goto err;
		}
		if ((scnname = FUNC10(e, ndx, shdr.sh_name)) == NULL)
			continue;

		if (FUNC18(scnname, ".gnu_debuglink") == 0)
			break;
	}
	if (scn == NULL)
		goto internal;

	if ((data = FUNC7(scn, NULL)) == NULL) {
		FUNC1("ERROR: elf_getdata failed: %s", FUNC6(-1));
		goto err;
	}

	/*
	 * The data contains a null-terminated file name followed by a 4-byte
	 * CRC.
	 */
	if (data->d_size < sizeof(crc) + 1) {
		FUNC1("ERROR: debuglink section is too small (%zd bytes)",
		    data->d_size);
		goto internal;
	}
	if (FUNC21(data->d_buf, data->d_size) >= data->d_size - sizeof(crc)) {
		FUNC1("ERROR: no null-terminator in gnu_debuglink section");
		goto internal;
	}

	debugfile = data->d_buf;
	FUNC14(&crc, (char *)data->d_buf + data->d_size - sizeof(crc),
	    sizeof(crc));

	/*
	 * Search for the debug file using the algorithm described in the gdb
	 * documentation:
	 * - look in the directory containing the object,
	 * - look in the subdirectory ".debug" of the directory containing the
	 *   object,
	 * - look in the global debug directories (currently /usr/lib/debug).
	 */
	(void)FUNC20(path, map->pr_mapname, sizeof(path));
	(void)FUNC3(path);

	if ((fd2 = FUNC16(path, debugfile, crc)) >= 0)
		goto external;

	if (FUNC19(path, "/.debug", sizeof(path)) < sizeof(path) &&
	    (fd2 = FUNC16(path, debugfile, crc)) >= 0)
		goto external;

	(void)FUNC17(path, sizeof(path), PATH_DEBUG_DIR);
	if (FUNC19(path, map->pr_mapname, sizeof(path)) < sizeof(path)) {
		(void)FUNC3(path);
		if ((fd2 = FUNC16(path, debugfile, crc)) >= 0)
			goto external;
	}

internal:
	/* We didn't find a debug file, just return the object's descriptor. */
	file->elf = e;
	file->fd = fd;
	FUNC13(file);
	return (0);

external:
	if ((e2 = FUNC4(fd2, ELF_C_READ, NULL)) == NULL) {
		FUNC1("ERROR: elf_begin failed: %s", FUNC6(-1));
		(void)FUNC2(fd2);
		goto err;
	}
	(void)FUNC5(e);
	(void)FUNC2(fd);
	file->elf = e2;
	file->fd = fd2;
	FUNC13(file);
	return (0);

err:
	if (e != NULL)
		(void)FUNC5(e);
	(void)FUNC2(fd);
	return (-1);
}