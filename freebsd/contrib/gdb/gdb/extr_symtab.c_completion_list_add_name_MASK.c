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
 char** return_val ; 
 int return_val_index ; 
 int return_val_size ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char*,int) ; 

__attribute__((used)) static void
FUNC7 (char *symname, char *sym_text, int sym_text_len,
			  char *text, char *word)
{
  int newsize;
  int i;

  /* clip symbols that cannot match */

  if (FUNC3 (symname, sym_text, sym_text_len) != 0)
    {
      return;
    }

  /* We have a match for a completion, so add SYMNAME to the current list
     of matches. Note that the name is moved to freshly malloc'd space. */

  {
    char *new;
    if (word == sym_text)
      {
	new = FUNC5 (FUNC2 (symname) + 5);
	FUNC1 (new, symname);
      }
    else if (word > sym_text)
      {
	/* Return some portion of symname.  */
	new = FUNC5 (FUNC2 (symname) + 5);
	FUNC1 (new, symname + (word - sym_text));
      }
    else
      {
	/* Return some of SYM_TEXT plus symname.  */
	new = FUNC5 (FUNC2 (symname) + (sym_text - word) + 5);
	FUNC4 (new, word, sym_text - word);
	new[sym_text - word] = '\0';
	FUNC0 (new, symname);
      }

    if (return_val_index + 3 > return_val_size)
      {
	newsize = (return_val_size *= 2) * sizeof (char *);
	return_val = (char **) FUNC6 ((char *) return_val, newsize);
      }
    return_val[return_val_index++] = new;
    return_val[return_val_index] = NULL;
  }
}