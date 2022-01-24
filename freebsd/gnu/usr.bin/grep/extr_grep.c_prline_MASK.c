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
typedef  int /*<<< orphan*/  uintmax_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 char const* bufbeg ; 
 scalar_t__ color_option ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC4 (char const*,int,size_t*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* filename ; 
 int filename_mask ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int,int,int /*<<< orphan*/ ) ; 
 char* grep_color ; 
 char const* lastnl ; 
 char const* lastout ; 
 scalar_t__ line_buffered ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 scalar_t__ only_matching ; 
 scalar_t__ out_byte ; 
 scalar_t__ out_file ; 
 scalar_t__ out_line ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 size_t FUNC12 (char const*,int,size_t*,int) ; 
 size_t FUNC13 (char const*,int,size_t*,int) ; 
 int /*<<< orphan*/  totalcc ; 
 int /*<<< orphan*/  totalnl ; 

__attribute__((used)) static void
FUNC14 (char const *beg, char const *lim, int sep)
{
  if (out_file)
    FUNC11 ("%s%c", filename, sep & filename_mask);
  if (out_line)
    {
      FUNC9 (beg);
      totalnl = FUNC1 (totalnl, 1);
      FUNC10 (totalnl, sep);
      lastnl = lim;
    }
  if (out_byte)
    {
      uintmax_t pos = FUNC1 (totalcc, beg - bufbeg);
#if defined(HAVE_DOS_FILE_CONTENTS)
      pos = dossified_pos (pos);
#endif
      FUNC10 (pos, sep);
    }
  if (only_matching)
    {
      size_t match_size;
      size_t match_offset;
      while ((match_offset = FUNC4) (beg, lim - beg, &match_size, 1))
	  != (size_t) -1)
        {
	  char const *b = beg + match_offset;
	  if (b == lim)
	    break;
	  if (match_size == 0)
	    break;
	  if(color_option)
	    FUNC11("\33[%sm", grep_color);
	  FUNC8(b, sizeof (char), match_size, stdout);
	  if(color_option)
	    FUNC7("\33[00m", stdout);
	  FUNC7("\n", stdout);
	  beg = b + match_size;
        }
      lastout = lim;
      if(line_buffered)
	FUNC6(stdout);
      return;
    }
  if (color_option)
    {
      size_t match_size;
      size_t match_offset;
      while (lim-beg && (match_offset = FUNC4) (beg, lim - beg, &match_size, 1))
	     != (size_t) -1)
	{
	  char const *b = beg + match_offset;
	  /* Avoid matching the empty line at the end of the buffer. */
	  if (b == lim)
	    break;
	  /* Avoid hanging on grep --color "" foo */
	  if (match_size == 0)
	    break;
	  FUNC8 (beg, sizeof (char), match_offset, stdout);
	  FUNC11 ("\33[%sm", grep_color);
	  FUNC8 (b, sizeof (char), match_size, stdout);
	  FUNC7 ("\33[00m", stdout);
	  beg = b + match_size;
	}
      FUNC7 ("\33[K", stdout);
    }
  FUNC8 (beg, 1, lim - beg, stdout);
  if (FUNC5 (stdout))
    FUNC3 (0, errno, FUNC0("writing output"));
  lastout = lim;
  if (line_buffered)
    FUNC6 (stdout);
}