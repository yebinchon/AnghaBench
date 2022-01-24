#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct subfile {int dummy; } ;
struct TYPE_5__ {scalar_t__ l_paddr; int /*<<< orphan*/  l_symndx; } ;
struct internal_lineno {scalar_t__ l_lnno; TYPE_1__ l_addr; } ;
struct coff_symfile_info {unsigned int max_lineno_offset; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_8__ {int /*<<< orphan*/  section_offsets; int /*<<< orphan*/ * obfd; scalar_t__ sym_private; } ;
struct TYPE_7__ {int local_linesz; } ;
struct TYPE_6__ {TYPE_4__* objfile; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*,struct internal_lineno*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct subfile*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  symfile_complaints ; 
 TYPE_2__* this_symtab_psymtab ; 

__attribute__((used)) static void
FUNC11 (struct subfile *subfile, unsigned beginoffset, unsigned endoffset,	/* offsets to line table */
		  CORE_ADDR startaddr,	/* offsets to line table */
		  CORE_ADDR endaddr, unsigned *firstLine)
{
  unsigned int curoffset;
  CORE_ADDR addr;
  void *ext_lnno;
  struct internal_lineno int_lnno;
  unsigned int limit_offset;
  bfd *abfd;
  int linesz;

  if (endoffset == 0 && startaddr == 0 && endaddr == 0)
    return;
  curoffset = beginoffset;
  limit_offset =
    ((struct coff_symfile_info *) this_symtab_psymtab->objfile->sym_private)
    ->max_lineno_offset;

  if (endoffset != 0)
    {
      if (endoffset >= limit_offset)
	{
	  FUNC7 (&symfile_complaints,
		     "Bad line table offset in C_EINCL directive");
	  return;
	}
      limit_offset = endoffset;
    }
  else
    limit_offset -= 1;

  abfd = this_symtab_psymtab->objfile->obfd;
  linesz = FUNC6 (abfd)->local_linesz;
  ext_lnno = FUNC2 (linesz);

  while (curoffset <= limit_offset)
    {
      FUNC5 (abfd, curoffset, SEEK_SET);
      FUNC3 (ext_lnno, linesz, abfd);
      FUNC4 (abfd, ext_lnno, &int_lnno);

      /* Find the address this line represents.  */
      addr = (int_lnno.l_lnno
	      ? int_lnno.l_addr.l_paddr
	      : FUNC9 (int_lnno.l_addr.l_symndx));
      addr += FUNC0 (this_symtab_psymtab->objfile->section_offsets,
			FUNC1 (this_symtab_psymtab->objfile));

      if (addr < startaddr || (endaddr && addr >= endaddr))
	return;

      if (int_lnno.l_lnno == 0)
	{
	  *firstLine = FUNC8 (int_lnno.l_addr.l_symndx);
	  FUNC10 (subfile, 0, addr);
	  --(*firstLine);
	}
      else
	FUNC10 (subfile, *firstLine + int_lnno.l_lnno, addr);
      curoffset += linesz;
    }
}