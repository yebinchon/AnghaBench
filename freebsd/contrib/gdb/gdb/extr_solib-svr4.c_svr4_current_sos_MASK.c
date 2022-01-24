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
struct link_map_offsets {int link_map_size; } ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct so_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct so_list*) ; 
 scalar_t__ FUNC2 (struct so_list*) ; 
 int SO_NAME_MAX_PATH_SIZE ; 
 struct link_map_offsets* FUNC3 () ; 
 scalar_t__ debug_base ; 
 int /*<<< orphan*/  FUNC4 (struct cleanup*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct so_list*) ; 
 scalar_t__ FUNC7 () ; 
 struct cleanup* FUNC8 (int /*<<< orphan*/  (*) (char*),struct so_list*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct so_list*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,struct so_list*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char**,int,int*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 void* FUNC18 (int) ; 

__attribute__((used)) static struct so_list *
FUNC19 (void)
{
  CORE_ADDR lm;
  struct so_list *head = 0;
  struct so_list **link_ptr = &head;

  /* Make sure we've looked up the inferior's dynamic linker's base
     structure.  */
  if (! debug_base)
    {
      debug_base = FUNC7 ();

      /* If we can't find the dynamic linker's base structure, this
	 must not be a dynamically linked executable.  Hmm.  */
      if (! debug_base)
	return 0;
    }

  /* Walk the inferior's link map list, and build our list of
     `struct so_list' nodes.  */
  lm = FUNC5 ();  
  while (lm)
    {
      struct link_map_offsets *lmo = FUNC3 ();
      struct so_list *new
	= (struct so_list *) FUNC18 (sizeof (struct so_list));
      struct cleanup *old_chain = FUNC8 (xfree, new);

      FUNC10 (new, 0, sizeof (*new));

      new->lm_info = FUNC18 (sizeof (struct lm_info));
      FUNC8 (xfree, new->lm_info);

      new->lm_info->lm = FUNC18 (lmo->link_map_size);
      FUNC8 (xfree, new->lm_info->lm);
      FUNC10 (new->lm_info->lm, 0, lmo->link_map_size);

      FUNC11 (lm, new->lm_info->lm, lmo->link_map_size);

      lm = FUNC2 (new);

      /* For SVR4 versions, the first entry in the link map is for the
         inferior executable, so we must ignore it.  For some versions of
         SVR4, it has no name.  For others (Solaris 2.3 for example), it
         does have a name, so we can no longer use a missing name to
         decide when to ignore it. */
      if (FUNC0 (new))
	FUNC6 (new);
      else
	{
	  int errcode;
	  char *buffer;

	  /* Extract this shared object's name.  */
	  FUNC15 (FUNC1 (new), &buffer,
			      SO_NAME_MAX_PATH_SIZE - 1, &errcode);
	  if (errcode != 0)
	    {
	      FUNC16 ("current_sos: Can't read pathname for load map: %s\n",
		       FUNC12 (errcode));
	    }
	  else
	    {
	      FUNC14 (new->so_name, buffer, SO_NAME_MAX_PATH_SIZE - 1);
	      new->so_name[SO_NAME_MAX_PATH_SIZE - 1] = '\0';
	      FUNC17 (buffer);
	      FUNC13 (new->so_original_name, new->so_name);
	    }

	  /* If this entry has no name, or its name matches the name
	     for the main executable, don't include it in the list.  */
	  if (! new->so_name[0]
	      || FUNC9 (new->so_name))
	    FUNC6 (new);
	  else
	    {
	      new->next = 0;
	      *link_ptr = new;
	      link_ptr = &new->next;
	    }
	}

      FUNC4 (old_chain);
    }

  return head;
}