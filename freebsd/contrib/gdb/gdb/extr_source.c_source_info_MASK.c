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
struct symtab {char* filename; char* dirname; char* fullname; int nlines; char* debugformat; scalar_t__ macro_table; int /*<<< orphan*/  language; } ;

/* Variables and functions */
 struct symtab* current_source_symtab ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2 (char *ignore, int from_tty)
{
  struct symtab *s = current_source_symtab;

  if (!s)
    {
      FUNC1 ("No current source file.\n");
      return;
    }
  FUNC1 ("Current source file is %s\n", s->filename);
  if (s->dirname)
    FUNC1 ("Compilation directory is %s\n", s->dirname);
  if (s->fullname)
    FUNC1 ("Located in %s\n", s->fullname);
  if (s->nlines)
    FUNC1 ("Contains %d line%s.\n", s->nlines,
		     s->nlines == 1 ? "" : "s");

  FUNC1 ("Source language is %s.\n", FUNC0 (s->language));
  FUNC1 ("Compiled with %s debugging format.\n", s->debugformat);
  FUNC1 ("%s preprocessor macro info.\n",
                   s->macro_table ? "Includes" : "Does not include");
}