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
struct objfile {char* name; } ;
typedef  int /*<<< orphan*/  bfd_size_type ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 char* DEBUG_SUBDIRECTORY ; 
 scalar_t__ FUNC0 (char) ; 
 char* FUNC1 (int) ; 
 char* debug_file_directory ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (struct objfile*,unsigned long*) ; 
 scalar_t__ FUNC4 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*) ; 

__attribute__((used)) static char *
FUNC10 (struct objfile *objfile)
{
  asection *sect;
  char *basename;
  char *dir;
  char *debugfile;
  char *name_copy;
  bfd_size_type debuglink_size;
  unsigned long crc32;
  int i;

  basename = FUNC3 (objfile, &crc32);

  if (basename == NULL)
    return NULL;
  
  dir = FUNC9 (objfile->name);

  /* Strip off the final filename part, leaving the directory name,
     followed by a slash.  Objfile names should always be absolute and
     tilde-expanded, so there should always be a slash in there
     somewhere.  */
  for (i = FUNC7(dir) - 1; i >= 0; i--)
    {
      if (FUNC0 (dir[i]))
	break;
    }
  FUNC2 (i >= 0 && FUNC0 (dir[i]));
  dir[i+1] = '\0';
  
  debugfile = FUNC1 (FUNC7 (debug_file_directory) + 1
                      + FUNC7 (dir)
                      + FUNC7 (DEBUG_SUBDIRECTORY)
                      + FUNC7 ("/")
                      + FUNC7 (basename) 
                      + 1);

  /* First try in the same directory as the original file.  */
  FUNC6 (debugfile, dir);
  FUNC5 (debugfile, basename);

  if (FUNC4 (debugfile, crc32))
    {
      FUNC8 (basename);
      FUNC8 (dir);
      return FUNC9 (debugfile);
    }
  
  /* Then try in the subdirectory named DEBUG_SUBDIRECTORY.  */
  FUNC6 (debugfile, dir);
  FUNC5 (debugfile, DEBUG_SUBDIRECTORY);
  FUNC5 (debugfile, "/");
  FUNC5 (debugfile, basename);

  if (FUNC4 (debugfile, crc32))
    {
      FUNC8 (basename);
      FUNC8 (dir);
      return FUNC9 (debugfile);
    }
  
  /* Then try in the global debugfile directory.  */
  FUNC6 (debugfile, debug_file_directory);
  FUNC5 (debugfile, "/");
  FUNC5 (debugfile, dir);
  FUNC5 (debugfile, basename);

  if (FUNC4 (debugfile, crc32))
    {
      FUNC8 (basename);
      FUNC8 (dir);
      return FUNC9 (debugfile);
    }
  
  FUNC8 (basename);
  FUNC8 (dir);
  return NULL;
}