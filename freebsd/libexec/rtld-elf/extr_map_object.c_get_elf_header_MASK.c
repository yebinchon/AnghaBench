#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; } ;
typedef  scalar_t__ off_t ;
struct TYPE_6__ {scalar_t__* e_ident; scalar_t__ e_version; scalar_t__ e_type; scalar_t__ e_machine; int e_phentsize; int e_phoff; int e_phnum; } ;
typedef  int /*<<< orphan*/  Elf_Phdr ;
typedef  TYPE_1__ Elf_Ehdr ;

/* Variables and functions */
 size_t EI_CLASS ; 
 size_t EI_DATA ; 
 size_t EI_VERSION ; 
 scalar_t__ ELF_TARG_CLASS ; 
 scalar_t__ ELF_TARG_DATA ; 
 scalar_t__ ELF_TARG_MACH ; 
 scalar_t__ ET_DYN ; 
 scalar_t__ ET_EXEC ; 
 scalar_t__ EV_CURRENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 scalar_t__ MAP_FAILED ; 
 int MAP_PREFAULT_READ ; 
 int MAP_PRIVATE ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  errno ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static Elf_Ehdr *
FUNC5(int fd, const char *path, const struct stat *sbp)
{
	Elf_Ehdr *hdr;

	/* Make sure file has enough data for the ELF header */
	if (sbp != NULL && sbp->st_size < (off_t)sizeof(Elf_Ehdr)) {
		FUNC1("%s: invalid file format", path);
		return (NULL);
	}

	hdr = FUNC2(NULL, PAGE_SIZE, PROT_READ, MAP_PRIVATE | MAP_PREFAULT_READ,
	    fd, 0);
	if (hdr == (Elf_Ehdr *)MAP_FAILED) {
		FUNC1("%s: read error: %s", path, FUNC4(errno));
		return (NULL);
	}

	/* Make sure the file is valid */
	if (!FUNC0(*hdr)) {
		FUNC1("%s: invalid file format", path);
		goto error;
	}
	if (hdr->e_ident[EI_CLASS] != ELF_TARG_CLASS ||
	    hdr->e_ident[EI_DATA] != ELF_TARG_DATA) {
		FUNC1("%s: unsupported file layout", path);
		goto error;
	}
	if (hdr->e_ident[EI_VERSION] != EV_CURRENT ||
	    hdr->e_version != EV_CURRENT) {
		FUNC1("%s: unsupported file version", path);
		goto error;
	}
	if (hdr->e_type != ET_EXEC && hdr->e_type != ET_DYN) {
		FUNC1("%s: unsupported file type", path);
		goto error;
	}
	if (hdr->e_machine != ELF_TARG_MACH) {
		FUNC1("%s: unsupported machine", path);
		goto error;
	}

	/*
	 * We rely on the program header being in the first page.  This is
	 * not strictly required by the ABI specification, but it seems to
	 * always true in practice.  And, it simplifies things considerably.
	 */
	if (hdr->e_phentsize != sizeof(Elf_Phdr)) {
		FUNC1(
	    "%s: invalid shared object: e_phentsize != sizeof(Elf_Phdr)", path);
		goto error;
	}
	if (hdr->e_phoff + hdr->e_phnum * sizeof(Elf_Phdr) >
	    (size_t)PAGE_SIZE) {
		FUNC1("%s: program header too large", path);
		goto error;
	}
	return (hdr);

error:
	FUNC3(hdr, PAGE_SIZE);
	return (NULL);
}