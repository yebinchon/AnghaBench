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
struct symtab {char* fullname; char* filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct symtab*) ; 

char *
FUNC2 (struct symtab *s)
{
  int fd;

  if (!s)
    return NULL;

  /* If we've seen the file before, just return fullname. */

  if (s->fullname)
    return s->fullname;

  /* Try opening the file to setup fullname */

  fd = FUNC1 (s);
  if (fd < 0)
    return s->filename;		/* File not found.  Just use short name */

  /* Found the file.  Cleanup and return the full name */

  FUNC0 (fd);
  return s->fullname;
}