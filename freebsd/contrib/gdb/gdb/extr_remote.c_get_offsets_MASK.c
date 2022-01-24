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
struct section_offsets {int* offsets; } ;
struct remote_state {int /*<<< orphan*/  remote_packet_size; } ;
struct TYPE_6__ {int /*<<< orphan*/  num_sections; int /*<<< orphan*/  section_offsets; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct remote_state* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct section_offsets*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct section_offsets*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 
 TYPE_1__* symfile_objfile ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

__attribute__((used)) static void
FUNC14 (void)
{
  struct remote_state *rs = FUNC7 ();
  char *buf = FUNC4 (rs->remote_packet_size);
  char *ptr;
  int lose;
  CORE_ADDR text_addr, data_addr, bss_addr;
  struct section_offsets *offs;

  FUNC11 ("qOffsets");

  FUNC8 (buf, (rs->remote_packet_size), 0);

  if (buf[0] == '\000')
    return;			/* Return silently.  Stub doesn't support
				   this command. */
  if (buf[0] == 'E')
    {
      FUNC13 ("Remote failure reply: %s", buf);
      return;
    }

  /* Pick up each field in turn.  This used to be done with scanf, but
     scanf will make trouble if CORE_ADDR size doesn't match
     conversion directives correctly.  The following code will work
     with any size of CORE_ADDR.  */
  text_addr = data_addr = bss_addr = 0;
  ptr = buf;
  lose = 0;

  if (FUNC12 (ptr, "Text=", 5) == 0)
    {
      ptr += 5;
      /* Don't use strtol, could lose on big values.  */
      while (*ptr && *ptr != ';')
	text_addr = (text_addr << 4) + FUNC6 (*ptr++);
    }
  else
    lose = 1;

  if (!lose && FUNC12 (ptr, ";Data=", 6) == 0)
    {
      ptr += 6;
      while (*ptr && *ptr != ';')
	data_addr = (data_addr << 4) + FUNC6 (*ptr++);
    }
  else
    lose = 1;

  if (!lose && FUNC12 (ptr, ";Bss=", 5) == 0)
    {
      ptr += 5;
      while (*ptr && *ptr != ';')
	bss_addr = (bss_addr << 4) + FUNC6 (*ptr++);
    }
  else
    lose = 1;

  if (lose)
    FUNC5 ("Malformed response to offset query, %s", buf);

  if (symfile_objfile == NULL)
    return;

  offs = ((struct section_offsets *)
	  FUNC4 (FUNC3 (symfile_objfile->num_sections)));
  FUNC9 (offs, symfile_objfile->section_offsets,
	  FUNC3 (symfile_objfile->num_sections));

  offs->offsets[FUNC2 (symfile_objfile)] = text_addr;

  /* This is a temporary kludge to force data and bss to use the same offsets
     because that's what nlmconv does now.  The real solution requires changes
     to the stub and remote.c that I don't have time to do right now.  */

  offs->offsets[FUNC1 (symfile_objfile)] = data_addr;
  offs->offsets[FUNC0 (symfile_objfile)] = data_addr;

  FUNC10 (symfile_objfile, offs);
}