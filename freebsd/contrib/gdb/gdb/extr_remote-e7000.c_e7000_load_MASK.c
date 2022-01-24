#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ file_ptr ;
typedef  int bfd_vma ;
typedef  scalar_t__ bfd_size_type ;
struct TYPE_17__ {TYPE_2__* sections; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_18__ {struct TYPE_18__* next; } ;
typedef  TYPE_2__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  QUIT ; 
 int SEC_LOAD ; 
 int /*<<< orphan*/  WRITESIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,char*,scalar_t__,int) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  bfd_object ; 
 TYPE_1__* FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct cleanup*) ; 
 int /*<<< orphan*/  e7000_desc ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,...) ; 
 TYPE_1__* exec_bfd ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 char* FUNC18 (int) ; 
 int /*<<< orphan*/  gnutarget ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC19 (char) ; 
 struct cleanup* FUNC20 (TYPE_1__*) ; 
 int FUNC21 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int remote_timeout ; 
 int /*<<< orphan*/  FUNC28 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC31 (char*) ; 
 scalar_t__ FUNC32 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int timeout ; 
 int /*<<< orphan*/  using_tcp ; 
 int /*<<< orphan*/  FUNC34 (char*) ; 
 int /*<<< orphan*/  FUNC35 (int) ; 

__attribute__((used)) static void
FUNC36 (char *args, int from_tty)
{
  struct cleanup *old_chain;
  asection *section;
  bfd *pbfd;
  bfd_vma entry;
#define WRITESIZE 0x1000
  char buf[2 + 4 + 4 + WRITESIZE];	/* `DT' + <addr> + <len> + <data> */
  char *filename;
  int quiet;
  int nostart;
  time_t start_time, end_time;	/* Start and end times of download */
  unsigned long data_count;	/* Number of bytes transferred to memory */
  int oldtimeout = timeout;

  timeout = remote_timeout;


  /* FIXME! change test to test for type of download */
  if (!using_tcp)
    {
      FUNC17 (args, from_tty);
      return;
    }

  /* for direct tcp connections, we can do a fast binary download */
  buf[0] = 'D';
  buf[1] = 'T';
  quiet = 0;
  nostart = 0;
  filename = NULL;

  while (*args != '\000')
    {
      char *arg;

      while (FUNC19 (*args))
	args++;

      arg = args;

      while ((*args != '\000') && !FUNC19 (*args))
	args++;

      if (*args != '\000')
	*args++ = '\000';

      if (*arg != '-')
	filename = arg;
      else if (FUNC32 (arg, "-quiet", FUNC31 (arg)) == 0)
	quiet = 1;
      else if (FUNC32 (arg, "-nostart", FUNC31 (arg)) == 0)
	nostart = 1;
      else
	FUNC12 ("unknown option `%s'", arg);
    }

  if (!filename)
    filename = FUNC18 (1);

  pbfd = FUNC9 (filename, gnutarget);
  if (pbfd == NULL)
    {
      FUNC24 (filename);
      return;
    }
  old_chain = FUNC20 (pbfd);

  if (!FUNC0 (pbfd, bfd_object))
    FUNC12 ("\"%s\" is not an object file: %s", filename,
	   FUNC1 (FUNC2 ()));

  start_time = FUNC33 (NULL);
  data_count = 0;

  FUNC27 ("mw\r");

  FUNC13 ("\nOK");

  for (section = pbfd->sections; section; section = section->next)
    {
      if (FUNC4 (pbfd, section) & SEC_LOAD)
	{
	  bfd_vma section_address;
	  bfd_size_type section_size;
	  file_ptr fptr;

	  section_address = FUNC7 (pbfd, section);
	  section_size = FUNC6 (section);

	  if (!quiet)
	    FUNC25 ("[Loading section %s at 0x%s (%s bytes)]\n",
			     FUNC5 (pbfd, section),
			     FUNC22 (section_address),
			     FUNC23 (section_size));

	  fptr = 0;

	  data_count += section_size;

	  while (section_size > 0)
	    {
	      int count;
	      static char inds[] = "|/-\\";
	      static int k = 0;

	      QUIT;

	      count = FUNC21 (section_size, WRITESIZE);

	      buf[2] = section_address >> 24;
	      buf[3] = section_address >> 16;
	      buf[4] = section_address >> 8;
	      buf[5] = section_address;

	      buf[6] = count >> 24;
	      buf[7] = count >> 16;
	      buf[8] = count >> 8;
	      buf[9] = count;

	      FUNC3 (pbfd, section, buf + 10, fptr, count);

	      if (FUNC30 (e7000_desc, buf, count + 10))
		FUNC15 (gdb_stderr,
				    "e7000_load: serial_write failed: %s\n",
				    FUNC29 (errno));

	      FUNC13 ("OK");

	      if (!quiet)
		{
		  FUNC26 ("\r%c", inds[k++ % 4]);
		  FUNC16 (gdb_stdout);
		}

	      section_address += count;
	      fptr += count;
	      section_size -= count;
	    }
	}
    }

  FUNC34 ("ED");

  FUNC14 ();

  end_time = FUNC33 (NULL);

/* Finally, make the PC point at the start address */

  if (exec_bfd)
    FUNC35 (FUNC8 (exec_bfd));

  inferior_ptid = null_ptid;	/* No process now */

/* This is necessary because many things were based on the PC at the time that
   we attached to the monitor, which is no longer valid now that we have loaded
   new code (and just changed the PC).  Another way to do this might be to call
   normal_stop, except that the stack may not be valid, and things would get
   horribly confused... */

  FUNC10 ();

  if (!nostart)
    {
      entry = FUNC8 (pbfd);

      if (!quiet)
	FUNC26 ("[Starting %s at 0x%s]\n", filename, FUNC22 (entry));

/*      start_routine (entry); */
    }

  FUNC28 (data_count, start_time, end_time);

  FUNC11 (old_chain);
  timeout = oldtimeout;
}