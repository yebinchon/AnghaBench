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
struct trie {scalar_t__ shift; scalar_t__ depth; scalar_t__ fail; scalar_t__ next; scalar_t__ parent; scalar_t__ links; scalar_t__ accepting; } ;
struct kwset {int maxd; char const* trans; scalar_t__ target; int /*<<< orphan*/  mind; struct trie* trie; int /*<<< orphan*/  obstack; scalar_t__ words; } ;
typedef  int /*<<< orphan*/  kwset_t ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

kwset_t
FUNC4 (char const *trans)
{
  struct kwset *kwset;

  kwset = (struct kwset *) FUNC1(sizeof (struct kwset));
  if (!kwset)
    return 0;

  FUNC3(&kwset->obstack);
  kwset->words = 0;
  kwset->trie
    = (struct trie *) FUNC2(&kwset->obstack, sizeof (struct trie));
  if (!kwset->trie)
    {
      FUNC0((kwset_t) kwset);
      return 0;
    }
  kwset->trie->accepting = 0;
  kwset->trie->links = 0;
  kwset->trie->parent = 0;
  kwset->trie->next = 0;
  kwset->trie->fail = 0;
  kwset->trie->depth = 0;
  kwset->trie->shift = 0;
  kwset->mind = INT_MAX;
  kwset->maxd = -1;
  kwset->target = 0;
  kwset->trans = trans;

  return (kwset_t) kwset;
}