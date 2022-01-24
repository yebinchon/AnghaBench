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
struct symbol {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  struct symbol* badness_vector ;

/* Variables and functions */
 scalar_t__ STANDARD ; 
 char* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct symbol**,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC4 (struct cleanup*) ; 
 int FUNC5 (struct type**,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct symbol**,struct symbol***) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct cleanup* FUNC7 (int /*<<< orphan*/  (*) (struct symbol**),struct symbol**) ; 
 struct symbol** FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct symbol**) ; 

__attribute__((used)) static int
FUNC11 (struct type **arg_types, int nargs,
				 const char *func_name,
				 const char *qualified_name,
				 int namespace_len,
				 struct symbol ***oload_syms,
				 struct badness_vector **oload_champ_bv,
				 int *oload_champ)
{
  int next_namespace_len = namespace_len;
  int searched_deeper = 0;
  int num_fns = 0;
  struct cleanup *old_cleanups;
  int new_oload_champ;
  struct symbol **new_oload_syms;
  struct badness_vector *new_oload_champ_bv;
  char *new_namespace;

  if (next_namespace_len != 0)
    {
      FUNC6 (qualified_name[next_namespace_len] == ':');
      next_namespace_len +=  2;
    }
  next_namespace_len
    += FUNC2 (qualified_name + next_namespace_len);

  /* Initialize these to values that can safely be xfree'd.  */
  *oload_syms = NULL;
  *oload_champ_bv = NULL;

  /* First, see if we have a deeper namespace we can search in.  If we
     get a good match there, use it.  */

  if (qualified_name[next_namespace_len] == ':')
    {
      searched_deeper = 1;

      if (FUNC11 (arg_types, nargs,
					   func_name, qualified_name,
					   next_namespace_len,
					   oload_syms, oload_champ_bv,
					   oload_champ))
	{
	  return 1;
	}
    };

  /* If we reach here, either we're in the deepest namespace or we
     didn't find a good match in a deeper namespace.  But, in the
     latter case, we still have a bad match in a deeper namespace;
     note that we might not find any match at all in the current
     namespace.  (There's always a match in the deepest namespace,
     because this overload mechanism only gets called if there's a
     function symbol to start off with.)  */

  old_cleanups = FUNC7 (xfree, *oload_syms);
  old_cleanups = FUNC7 (xfree, *oload_champ_bv);
  new_namespace = FUNC0 (namespace_len + 1);
  FUNC9 (new_namespace, qualified_name, namespace_len);
  new_namespace[namespace_len] = '\0';
  new_oload_syms = FUNC8 (func_name,
					      new_namespace);
  while (new_oload_syms[num_fns])
    ++num_fns;

  new_oload_champ = FUNC5 (arg_types, nargs, 0, num_fns,
				      NULL, new_oload_syms,
				      &new_oload_champ_bv);

  /* Case 1: We found a good match.  Free earlier matches (if any),
     and return it.  Case 2: We didn't find a good match, but we're
     not the deepest function.  Then go with the bad match that the
     deeper function found.  Case 3: We found a bad match, and we're
     the deepest function.  Then return what we found, even though
     it's a bad match.  */

  if (new_oload_champ != -1
      && FUNC1 (new_oload_champ_bv, nargs, 0) == STANDARD)
    {
      *oload_syms = new_oload_syms;
      *oload_champ = new_oload_champ;
      *oload_champ_bv = new_oload_champ_bv;
      FUNC4 (old_cleanups);
      return 1;
    }
  else if (searched_deeper)
    {
      FUNC10 (new_oload_syms);
      FUNC10 (new_oload_champ_bv);
      FUNC3 (old_cleanups);
      return 0;
    }
  else
    {
      FUNC6 (new_oload_champ != -1);
      *oload_syms = new_oload_syms;
      *oload_champ = new_oload_champ;
      *oload_champ_bv = new_oload_champ_bv;
      FUNC3 (old_cleanups);
      return 0;
    }
}