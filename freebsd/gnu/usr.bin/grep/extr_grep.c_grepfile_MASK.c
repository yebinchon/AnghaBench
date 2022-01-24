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
struct TYPE_2__ {int /*<<< orphan*/  st_mode; } ;
struct stats {TYPE_1__ stat; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ BZflag ; 
#define  EACCES 129 
 int EINTR ; 
#define  EISDIR 128 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 scalar_t__ RECURSE_DIRECTORIES ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SKIP_DIRECTORIES ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ Zflag ; 
 char* FUNC3 (char*) ; 
 scalar_t__ after_last_match ; 
 scalar_t__ bufmapped ; 
 scalar_t__ bufoffset ; 
 scalar_t__ bzbufdesc ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ count_matches ; 
 scalar_t__ directories ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,char const*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,...) ; 
 char* filename ; 
 char filename_mask ; 
 int FUNC7 (int,char const*,struct stats*) ; 
 int FUNC8 (char const*,struct stats*) ; 
 int /*<<< orphan*/  gzbufdesc ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 char* label ; 
 int list_files ; 
 scalar_t__ FUNC13 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC14 (char const*,int) ; 
 scalar_t__ out_file ; 
 scalar_t__ outleft ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 scalar_t__ FUNC16 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  suppress_errors ; 
 int /*<<< orphan*/  FUNC17 (char const*,int) ; 

__attribute__((used)) static int
FUNC18 (char const *file, struct stats *stats)
{
  int desc;
  int count;
  int status;
  int flags;

  if (! file)
    {
      desc = 0;
      filename = label ? label : FUNC3("(standard input)");
    }
  else
    {
      while ((desc = FUNC14 (file, O_RDONLY | O_NONBLOCK)) < 0 && errno == EINTR)
	continue;

      if (desc < 0)
	{
	  int e = errno;

	  if (FUNC10 (e, file) && directories == RECURSE_DIRECTORIES)
	    {
	      if (FUNC16 (file, &stats->stat) != 0)
		{
		  FUNC5 (0, errno, "%s", file);
		  return 1;
		}

	      return FUNC8 (file, stats);
	    }

	  if (!suppress_errors)
	    {
	      if (directories == SKIP_DIRECTORIES)
		switch (e)
		  {
#if defined(EISDIR)
		  case EISDIR:
		    return 1;
#endif
		  case EACCES:
		    /* When skipping directories, don't worry about
		       directories that can't be opened.  */
		    if (FUNC12 (file))
		      return 1;
		    break;
		  }
	    }

	  FUNC17 (file, e);
	  return 1;
	}

      flags = FUNC6(desc, F_GETFL);
      flags &= ~O_NONBLOCK;
      FUNC6(desc, F_SETFL, flags);
      filename = file;
    }

#if defined(SET_BINARY)
  /* Set input to binary mode.  Pipes are simulated with files
     on DOS, so this includes the case of "foo | grep bar".  */
  if (!isatty (desc))
    SET_BINARY (desc);
#endif

  count = FUNC7 (desc, file, stats);
  if (count < 0)
    status = count + 2;
  else
    {
      if (count_matches)
	{
	  if (out_file)
	    FUNC15 ("%s%c", filename, ':' & filename_mask);
	  FUNC15 ("%d\n", count);
	}

      status = !count;
      if (list_files == 1 - 2 * status)
	FUNC15 ("%s%c", filename, '\n' & filename_mask);

      if (BZflag && bzbufdesc)
	FUNC0(bzbufdesc);
      else
#if HAVE_LIBZ > 0
      if (Zflag)
	gzclose(gzbufdesc);
      else
#endif
      if (! file)
	{
	  off_t required_offset = outleft ? bufoffset : after_last_match;
	  if ((bufmapped || required_offset != bufoffset)
	      && FUNC13 (desc, required_offset, SEEK_SET) < 0
	      && FUNC2 (stats->stat.st_mode))
	    FUNC5 (0, errno, "%s", filename);
	}
      else
	while (FUNC4 (desc) != 0)
	  if (errno != EINTR)
	    {
	      FUNC5 (0, errno, "%s", file);
	      break;
	    }
    }

  return status;
}