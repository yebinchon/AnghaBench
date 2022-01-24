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
struct symtab {int nlines; int* line_charpos; TYPE_1__* objfile; int /*<<< orphan*/  filename; } ;
struct stat {long st_mtime; scalar_t__ st_size; } ;
struct cleanup {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  md; scalar_t__ obfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_CUR ; 
 long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 scalar_t__ exec_bfd ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  xfree ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC11 (struct symtab *s, int desc)
{
  struct stat st;
  char *data, *p, *end;
  int nlines = 0;
  int lines_allocated = 1000;
  int *line_charpos;
  long mtime = 0;
  int size;

  line_charpos = (int *) FUNC9 (s->objfile->md,
				   lines_allocated * sizeof (int));
  if (FUNC2 (desc, &st) < 0)
    FUNC6 (s->filename);

  if (s && s->objfile && s->objfile->obfd)
    mtime = FUNC0 (s->objfile->obfd);
  else if (exec_bfd)
    mtime = FUNC0 (exec_bfd);

  if (mtime && mtime < st.st_mtime)
    {
      FUNC7 ("Source file is more recent than executable.\n");
    }

#ifdef LSEEK_NOT_LINEAR
  {
    char c;

    /* Have to read it byte by byte to find out where the chars live */

    line_charpos[0] = lseek (desc, 0, SEEK_CUR);
    nlines = 1;
    while (myread (desc, &c, 1) > 0)
      {
	if (c == '\n')
	  {
	    if (nlines == lines_allocated)
	      {
		lines_allocated *= 2;
		line_charpos =
		  (int *) xmrealloc (s->objfile->md, (char *) line_charpos,
				     sizeof (int) * lines_allocated);
	      }
	    line_charpos[nlines++] = lseek (desc, 0, SEEK_CUR);
	  }
      }
  }
#else /* lseek linear.  */
  {
    struct cleanup *old_cleanups;

    /* st_size might be a large type, but we only support source files whose 
       size fits in an int.  */
    size = (int) st.st_size;

    /* Use malloc, not alloca, because this may be pretty large, and we may
       run into various kinds of limits on stack size.  */
    data = (char *) FUNC8 (size);
    old_cleanups = FUNC4 (xfree, data);

    /* Reassign `size' to result of read for systems where \r\n -> \n.  */
    size = FUNC5 (desc, data, size);
    if (size < 0)
      FUNC6 (s->filename);
    end = data + size;
    p = data;
    line_charpos[0] = 0;
    nlines = 1;
    while (p != end)
      {
	if (*p++ == '\n'
	/* A newline at the end does not start a new line.  */
	    && p != end)
	  {
	    if (nlines == lines_allocated)
	      {
		lines_allocated *= 2;
		line_charpos =
		  (int *) FUNC10 (s->objfile->md, (char *) line_charpos,
				     sizeof (int) * lines_allocated);
	      }
	    line_charpos[nlines++] = p - data;
	  }
      }
    FUNC1 (old_cleanups);
  }
#endif /* lseek linear.  */
  s->nlines = nlines;
  s->line_charpos =
    (int *) FUNC10 (s->objfile->md, (char *) line_charpos,
		       nlines * sizeof (int));

}