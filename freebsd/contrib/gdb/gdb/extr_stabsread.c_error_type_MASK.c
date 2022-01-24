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
struct type {int dummy; } ;
struct objfile {int dummy; } ;

/* Variables and functions */
 struct type* builtin_type_error ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC1 (struct objfile*) ; 
 int /*<<< orphan*/  symfile_complaints ; 

__attribute__((used)) static struct type *
FUNC2 (char **pp, struct objfile *objfile)
{
  FUNC0 (&symfile_complaints, "couldn't parse type; debugger out of date?");
  while (1)
    {
      /* Skip to end of symbol.  */
      while (**pp != '\0')
	{
	  (*pp)++;
	}

      /* Check for and handle cretinous dbx symbol name continuation!  */
      if ((*pp)[-1] == '\\' || (*pp)[-1] == '?')
	{
	  *pp = FUNC1 (objfile);
	}
      else
	{
	  break;
	}
    }
  return (builtin_type_error);
}