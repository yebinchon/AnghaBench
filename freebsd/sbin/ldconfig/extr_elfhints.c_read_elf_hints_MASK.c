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
struct stat {scalar_t__ st_size; } ;
struct elfhints_hdr {scalar_t__ magic; int version; int /*<<< orphan*/  dirlist; int /*<<< orphan*/  strtab; } ;

/* Variables and functions */
 scalar_t__ ELFHINTS_MAGIC ; 
 scalar_t__ ENOENT ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 scalar_t__ MAXFILESIZE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char const*,...) ; 
 int FUNC4 (int,struct stat*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char**,char*) ; 

__attribute__((used)) static void
FUNC8(const char *hintsfile, int must_exist)
{
	int	 		 fd;
	struct stat		 s;
	void			*mapbase;
	struct elfhints_hdr	*hdr;
	char			*strtab;
	char			*dirlist;
	char			*p;

	if ((fd = FUNC6(hintsfile, O_RDONLY)) == -1) {
		if (errno == ENOENT && !must_exist)
			return;
		FUNC2(1, "Cannot open \"%s\"", hintsfile);
	}
	if (FUNC4(fd, &s) == -1)
		FUNC2(1, "Cannot stat \"%s\"", hintsfile);
	if (s.st_size > MAXFILESIZE)
		FUNC3(1, "\"%s\" is unreasonably large", hintsfile);
	/*
	 * We use a read-write, private mapping so that we can null-terminate
	 * some strings in it without affecting the underlying file.
	 */
	mapbase = FUNC5(NULL, s.st_size, PROT_READ|PROT_WRITE,
	    MAP_PRIVATE, fd, 0);
	if (mapbase == MAP_FAILED)
		FUNC2(1, "Cannot mmap \"%s\"", hintsfile);
	FUNC1(fd);

	hdr = (struct elfhints_hdr *)mapbase;
	if (hdr->magic != ELFHINTS_MAGIC)
		FUNC3(1, "\"%s\": invalid file format", hintsfile);
	if (hdr->version != 1)
		FUNC3(1, "\"%s\": unrecognized file version (%d)", hintsfile,
		    hdr->version);

	strtab = (char *)mapbase + hdr->strtab;
	dirlist = strtab + hdr->dirlist;

	if (*dirlist != '\0')
		while ((p = FUNC7(&dirlist, ":")) != NULL)
			FUNC0(hintsfile, p, 1);
}