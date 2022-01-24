#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  regexbuf; } ;

/* Variables and functions */
 int RE_HAT_LISTS_NOT_NEWLINE ; 
 int RE_ICASE ; 
 int RE_SYNTAX_GREP ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  dfa ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eolbyte ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ match_icase ; 
 scalar_t__ match_lines ; 
 scalar_t__ match_words ; 
 char* FUNC6 (char const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,size_t) ; 
 TYPE_1__* patterns ; 
 TYPE_1__ patterns0 ; 
 int pcount ; 
 char* FUNC8 (char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 TYPE_1__* FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 size_t FUNC12 (char*) ; 
 char* FUNC13 (int) ; 

__attribute__((used)) static void
FUNC14 (char const *pattern, size_t size)
{
  const char *err;
  char const *sep;
  size_t total = size;
  char const *motif = pattern;

  FUNC1 ();
  FUNC9 (RE_SYNTAX_GREP | RE_HAT_LISTS_NOT_NEWLINE | (match_icase ? RE_ICASE : 0));
  FUNC3 (RE_SYNTAX_GREP | RE_HAT_LISTS_NOT_NEWLINE, match_icase, eolbyte);

  /* For GNU regex compiler we have to pass the patterns separately to detect
     errors like "[\nallo\n]\n".  The patterns here are "[", "allo" and "]"
     GNU regex should have raise a syntax error.  The same for backref, where
     the backref should have been local to each pattern.  */
  do
    {
      size_t len;
      sep = FUNC6 (motif, '\n', total);
      if (sep)
	{
	  len = sep - motif;
	  sep++;
	  total -= (len + 1);
	}
      else
	{
	  len = total;
	  total = 0;
	}

      patterns = FUNC10 (patterns, (pcount + 1) * sizeof (*patterns));
      if (patterns == NULL)
	FUNC4 (2, errno, FUNC0("memory exhausted"));

      patterns[pcount] = patterns0;

      if ((err = FUNC8 (motif, len,
				    &(patterns[pcount].regexbuf))) != 0)
	FUNC4 (2, 0, err);
      pcount++;

      motif = sep;
    } while (sep && total != 0);

  /* In the match_words and match_lines cases, we use a different pattern
     for the DFA matcher that will quickly throw out cases that won't work.
     Then if DFA succeeds we do some hairy stuff using the regex matcher
     to decide whether the match should really count. */
  if (match_words || match_lines)
    {
      /* In the whole-word case, we use the pattern:
	 \(^\|[^[:alnum:]_]\)\(userpattern\)\([^[:alnum:]_]|$\).
	 In the whole-line case, we use the pattern:
	 ^\(userpattern\)$.  */

      static char const line_beg[] = "^\\(";
      static char const line_end[] = "\\)$";
      static char const word_beg[] = "\\(^\\|[^[:alnum:]_]\\)\\(";
      static char const word_end[] = "\\)\\([^[:alnum:]_]\\|$\\)";
      char *n = FUNC13 (sizeof word_beg - 1 + size + sizeof word_end);
      size_t i;
      FUNC11 (n, match_lines ? line_beg : word_beg);
      i = FUNC12 (n);
      FUNC7 (n + i, pattern, size);
      i += size;
      FUNC11 (n + i, match_lines ? line_end : word_end);
      i += FUNC12 (n + i);
      pattern = n;
      size = i;
    }

  FUNC2 (pattern, size, &dfa, 1);
  FUNC5 ();
}