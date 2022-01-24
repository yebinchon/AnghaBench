#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  len; struct TYPE_4__* children; struct TYPE_4__* next; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_fs_id_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 

svn_error_t *
FUNC6(apr_hash_t **entries_p,
                                svn_skel_t *skel,
                                apr_pool_t *pool)
{
  apr_hash_t *entries = NULL;
  int len = FUNC5(skel);
  svn_skel_t *elt;

  if (! (len >= 0))
    return FUNC3("entries");

  if (len > 0)
    {
      /* Else, allocate a hash and populate it. */
      entries = FUNC0(pool);

      /* Check entries are well-formed as we go along. */
      for (elt = skel->children; elt; elt = elt->next)
        {
          const char *name;
          svn_fs_id_t *id;

          /* ENTRY must be a list of two elements. */
          if (FUNC5(elt) != 2)
            return FUNC3("entries");

          /* Get the entry's name and ID. */
          name = FUNC2(pool, elt->children->data,
                                elt->children->len);
          id = FUNC4(elt->children->next->data,
                                     elt->children->next->len, pool);

          /* Add the entry to the hash. */
          FUNC1(entries, name, elt->children->len, id);
        }
    }

  /* Return the structure. */
  *entries_p = entries;
  return SVN_NO_ERROR;
}