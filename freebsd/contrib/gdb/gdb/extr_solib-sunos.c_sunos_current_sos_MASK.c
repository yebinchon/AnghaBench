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
struct so_list {char* so_name; struct so_list* next; int /*<<< orphan*/  so_original_name; struct so_list* lm; struct so_list* lm_info; } ;
struct lm_info {int dummy; } ;
struct link_map {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct so_list*) ; 
 scalar_t__ FUNC1 (struct so_list*) ; 
 int SO_NAME_MAX_PATH_SIZE ; 
 scalar_t__ debug_base ; 
 int /*<<< orphan*/  FUNC2 (struct cleanup*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct so_list*) ; 
 scalar_t__ FUNC5 () ; 
 struct cleanup* FUNC6 (int /*<<< orphan*/  (*) (char*),struct so_list*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct so_list*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct so_list*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char**,int,int*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 void* FUNC16 (int) ; 

__attribute__((used)) static struct so_list *
FUNC17 (void)
{
  CORE_ADDR lm;
  struct so_list *head = 0;
  struct so_list **link_ptr = &head;
  int errcode;
  char *buffer;

  /* Make sure we've looked up the inferior's dynamic linker's base
     structure.  */
  if (! debug_base)
    {
      debug_base = FUNC5 ();

      /* If we can't find the dynamic linker's base structure, this
	 must not be a dynamically linked executable.  Hmm.  */
      if (! debug_base)
	return 0;
    }

  /* Walk the inferior's link map list, and build our list of
     `struct so_list' nodes.  */
  lm = FUNC3 ();  
  while (lm)
    {
      struct so_list *new
	= (struct so_list *) FUNC16 (sizeof (struct so_list));
      struct cleanup *old_chain = FUNC6 (xfree, new);

      FUNC8 (new, 0, sizeof (*new));

      new->lm_info = FUNC16 (sizeof (struct lm_info));
      FUNC6 (xfree, new->lm_info);

      new->lm_info->lm = FUNC16 (sizeof (struct link_map));
      FUNC6 (xfree, new->lm_info->lm);
      FUNC8 (new->lm_info->lm, 0, sizeof (struct link_map));

      FUNC9 (lm, new->lm_info->lm, sizeof (struct link_map));

      lm = FUNC1 (new);

      /* Extract this shared object's name.  */
      FUNC13 (FUNC0 (new), &buffer,
			  SO_NAME_MAX_PATH_SIZE - 1, &errcode);
      if (errcode != 0)
	{
	  FUNC14 ("current_sos: Can't read pathname for load map: %s\n",
		   FUNC10 (errcode));
	}
      else
	{
	  FUNC12 (new->so_name, buffer, SO_NAME_MAX_PATH_SIZE - 1);
	  new->so_name[SO_NAME_MAX_PATH_SIZE - 1] = '\0';
	  FUNC15 (buffer);
	  FUNC11 (new->so_original_name, new->so_name);
	}

      /* If this entry has no name, or its name matches the name
	 for the main executable, don't include it in the list.  */
      if (! new->so_name[0]
	  || FUNC7 (new->so_name))
	FUNC4 (new);
      else
	{
	  new->next = 0;
	  *link_ptr = new;
	  link_ptr = &new->next;
	}

      FUNC2 (old_chain);
    }

  return head;
}