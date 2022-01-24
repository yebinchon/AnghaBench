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

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  SLASH_STRING ; 
 char* FUNC1 (size_t) ; 
 char* FUNC2 (char*,char const*,char const*,...) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char) ; 
 char* FUNC5 (char const*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char const*) ; 

char *
FUNC10 (const char *filename)
{
  const char *base_name = FUNC5 (filename);
  char *dir_name;
  char *real_path;
  char *result;

  /* Extract the basename of filename, and return immediately 
     a copy of filename if it does not contain any directory prefix. */
  if (base_name == filename)
    return FUNC9 (filename);

  dir_name = FUNC1 ((size_t) (base_name - filename + 2));
  /* Allocate enough space to store the dir_name + plus one extra
     character sometimes needed under Windows (see below), and
     then the closing \000 character */
  FUNC7 (dir_name, filename, base_name - filename);
  dir_name[base_name - filename] = '\000';

#ifdef HAVE_DOS_BASED_FILE_SYSTEM
  /* We need to be careful when filename is of the form 'd:foo', which
     is equivalent of d:./foo, which is totally different from d:/foo.  */
  if (strlen (dir_name) == 2 && isalpha (dir_name[0]) && dir_name[1] == ':')
    {
      dir_name[2] = '.';
      dir_name[3] = '\000';
    }
#endif

  /* Canonicalize the directory prefix, and build the resulting
     filename. If the dirname realpath already contains an ending
     directory separator, avoid doubling it.  */
  real_path = FUNC3 (dir_name);
  if (FUNC0 (real_path[FUNC6 (real_path) - 1]))
    result = FUNC2 (real_path, base_name, NULL);
  else
    result = FUNC2 (real_path, SLASH_STRING, base_name, NULL);

  FUNC8 (real_path);
  return result;
}