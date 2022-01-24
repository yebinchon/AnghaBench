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

/* Variables and functions */
 void* FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,char*) ; 
 scalar_t__ BZflag ; 
 scalar_t__ INITIAL_BUFSIZE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ SKIP_DEVICES ; 
 scalar_t__ SKIP_DIRECTORIES ; 
 int STDIN_FILENO ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ Zflag ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* bufalloc ; 
 int /*<<< orphan*/ * bufbeg ; 
 int bufdesc ; 
 scalar_t__ buffer ; 
 int /*<<< orphan*/ * buflim ; 
 int bufmapped ; 
 int bufoffset ; 
 int /*<<< orphan*/ * bzbufdesc ; 
 scalar_t__ devices ; 
 scalar_t__ directories ; 
 int /*<<< orphan*/  eolbyte ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int,TYPE_1__*) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/ * gzbufdesc ; 
 int /*<<< orphan*/ * FUNC13 (int,char*) ; 
 int initial_bufoffset ; 
 int FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ mmap_option ; 
 int pagesize ; 
 scalar_t__ FUNC15 (void*) ; 

__attribute__((used)) static int
FUNC16 (int fd, char const *file, struct stats *stats)
{
  if (! pagesize)
    {
      pagesize = FUNC12 ();
      if (pagesize == 0 || 2 * pagesize + 1 <= pagesize)
	FUNC9 ();
      bufalloc = FUNC0 (INITIAL_BUFSIZE, pagesize) + pagesize + 1;
      buffer = FUNC15 (bufalloc);
    }
  if (BZflag)
    {
    bzbufdesc = FUNC1(fd, "r");
    if (bzbufdesc == NULL)
      FUNC10(2, 0, FUNC8("memory exhausted"));
    }
#if HAVE_LIBZ > 0
  if (Zflag)
    {
    gzbufdesc = gzdopen(fd, "r");
    if (gzbufdesc == NULL)
      error(2, 0, _("memory exhausted"));
    }
#endif

  bufbeg = buflim = FUNC0 (buffer + 1, pagesize);
  bufbeg[-1] = eolbyte;
  bufdesc = fd;

  if (FUNC11 (fd, &stats->stat) != 0)
    {
      FUNC10 (0, errno, "fstat");
      return 0;
    }
  if (fd != STDIN_FILENO) {
    if (directories == SKIP_DIRECTORIES && FUNC4 (stats->stat.st_mode))
      return 0;
#ifndef DJGPP
    if (devices == SKIP_DEVICES && (FUNC3(stats->stat.st_mode) || FUNC2(stats->stat.st_mode) || FUNC7(stats->stat.st_mode) || FUNC5(stats->stat.st_mode)))
#else
    if (devices == SKIP_DEVICES && (S_ISCHR(stats->stat.st_mode) || S_ISBLK(stats->stat.st_mode)))
#endif
      return 0;
  }
  if (
      BZflag ||
#if HAVE_LIBZ > 0
      Zflag ||
#endif
      FUNC6 (stats->stat.st_mode))
    {
      if (file)
	bufoffset = 0;
      else
	{
	  bufoffset = FUNC14 (fd, 0, SEEK_CUR);
	  if (bufoffset < 0)
	    {
	      FUNC10 (0, errno, "lseek");
	      return 0;
	    }
	}
#if defined(HAVE_MMAP)
      initial_bufoffset = bufoffset;
      bufmapped = mmap_option && bufoffset % pagesize == 0;
#endif
    }
  else
    {
#if defined(HAVE_MMAP)
      bufmapped = 0;
#endif
    }
  return 1;
}