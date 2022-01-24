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
struct ui_file {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  unsigned int CORE_ADDR ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,int,int,int) ; 
 int /*<<< orphan*/  QUIT ; 
 scalar_t__ addressprint ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC3 (struct cleanup*) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC7 (struct ui_file*) ; 
 struct cleanup* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC9 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  null_cleanup ; 
 int FUNC10 (unsigned int,char*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,int,struct ui_file*) ; 
 unsigned int print_max ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (unsigned int,char*,int) ; 
 int /*<<< orphan*/  xfree ; 
 scalar_t__ FUNC14 (unsigned int) ; 
 scalar_t__ FUNC15 (char*,unsigned int) ; 

int
FUNC16 (CORE_ADDR addr, int len, int width, struct ui_file *stream)
{
  int force_ellipsis = 0;	/* Force ellipsis to be printed if nonzero. */
  int errcode;			/* Errno returned from bad reads. */
  unsigned int fetchlimit;	/* Maximum number of chars to print. */
  unsigned int nfetch;		/* Chars to fetch / chars fetched. */
  unsigned int chunksize;	/* Size of each fetch, in chars. */
  char *buffer = NULL;		/* Dynamically growable fetch buffer. */
  char *bufptr;			/* Pointer to next available byte in buffer. */
  char *limit;			/* First location past end of fetch buffer. */
  struct cleanup *old_chain = NULL;	/* Top of the old cleanup chain. */
  int found_nul;		/* Non-zero if we found the nul char */

  /* First we need to figure out the limit on the number of characters we are
     going to attempt to fetch and print.  This is actually pretty simple.  If
     LEN >= zero, then the limit is the minimum of LEN and print_max.  If
     LEN is -1, then the limit is print_max.  This is true regardless of
     whether print_max is zero, UINT_MAX (unlimited), or something in between,
     because finding the null byte (or available memory) is what actually
     limits the fetch. */

  fetchlimit = (len == -1 ? print_max : FUNC9 (len, print_max));

  /* Now decide how large of chunks to try to read in one operation.  This
     is also pretty simple.  If LEN >= zero, then we want fetchlimit chars,
     so we might as well read them all in one operation.  If LEN is -1, we
     are looking for a null terminator to end the fetching, so we might as
     well read in blocks that are large enough to be efficient, but not so
     large as to be slow if fetchlimit happens to be large.  So we choose the
     minimum of 8 and fetchlimit.  We used to use 200 instead of 8 but
     200 is way too big for remote debugging over a serial line.  */

  chunksize = (len == -1 ? FUNC9 (8, fetchlimit) : fetchlimit);

  /* Loop until we either have all the characters to print, or we encounter
     some error, such as bumping into the end of the address space. */

  found_nul = 0;
  old_chain = FUNC8 (null_cleanup, 0);

  if (len > 0)
    {
      buffer = (char *) FUNC14 (len * width);
      bufptr = buffer;
      old_chain = FUNC8 (xfree, buffer);

      nfetch = FUNC10 (addr, bufptr, len * width, &errcode)
	/ width;
      addr += nfetch * width;
      bufptr += nfetch * width;
    }
  else if (len == -1)
    {
      unsigned long bufsize = 0;
      do
	{
	  QUIT;
	  nfetch = FUNC9 (chunksize, fetchlimit - bufsize);

	  if (buffer == NULL)
	    buffer = (char *) FUNC14 (nfetch * width);
	  else
	    {
	      FUNC2 (old_chain);
	      buffer = (char *) FUNC15 (buffer, (nfetch + bufsize) * width);
	    }

	  old_chain = FUNC8 (xfree, buffer);
	  bufptr = buffer + bufsize * width;
	  bufsize += nfetch;

	  /* Read as much as we can. */
	  nfetch = FUNC10 (addr, bufptr, nfetch * width, &errcode)
	    / width;

	  /* Scan this chunk for the null byte that terminates the string
	     to print.  If found, we don't need to fetch any more.  Note
	     that bufptr is explicitly left pointing at the next character
	     after the null byte, or at the next character after the end of
	     the buffer. */

	  limit = bufptr + nfetch * width;
	  while (bufptr < limit)
	    {
	      unsigned long c;

	      c = FUNC4 (bufptr, width);
	      addr += width;
	      bufptr += width;
	      if (c == 0)
		{
		  /* We don't care about any error which happened after
		     the NULL terminator.  */
		  errcode = 0;
		  found_nul = 1;
		  break;
		}
	    }
	}
      while (errcode == 0	/* no error */
	     && bufptr - buffer < fetchlimit * width	/* no overrun */
	     && !found_nul);	/* haven't found nul yet */
    }
  else
    {				/* length of string is really 0! */
      buffer = bufptr = NULL;
      errcode = 0;
    }

  /* bufptr and addr now point immediately beyond the last byte which we
     consider part of the string (including a '\0' which ends the string).  */

  /* We now have either successfully filled the buffer to fetchlimit, or
     terminated early due to an error or finding a null char when LEN is -1. */

  if (len == -1 && !found_nul)
    {
      char *peekbuf;

      /* We didn't find a null terminator we were looking for.  Attempt
         to peek at the next character.  If not successful, or it is not
         a null byte, then force ellipsis to be printed.  */

      peekbuf = (char *) FUNC1 (width);

      if (FUNC13 (addr, peekbuf, width) == 0
	  && FUNC4 (peekbuf, width) != 0)
	force_ellipsis = 1;
    }
  else if ((len >= 0 && errcode != 0) || (len > (bufptr - buffer) / width))
    {
      /* Getting an error when we have a requested length, or fetching less
         than the number of characters actually requested, always make us
         print ellipsis. */
      force_ellipsis = 1;
    }

  QUIT;

  /* If we get an error before fetching anything, don't print a string.
     But if we fetch something and then get an error, print the string
     and then the error message.  */
  if (errcode == 0 || bufptr > buffer)
    {
      if (addressprint)
	{
	  FUNC6 (" ", stream);
	}
      FUNC0 (stream, buffer, (bufptr - buffer) / width, width, force_ellipsis);
    }

  if (errcode != 0)
    {
      if (errcode == EIO)
	{
	  FUNC5 (stream, " <Address ");
	  FUNC11 (addr, 1, stream);
	  FUNC5 (stream, " out of bounds>");
	}
      else
	{
	  FUNC5 (stream, " <Error reading address ");
	  FUNC11 (addr, 1, stream);
	  FUNC5 (stream, ": %s>", FUNC12 (errcode));
	}
    }
  FUNC7 (stream);
  FUNC3 (old_chain);
  return ((bufptr - buffer) / width);
}