#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* children; scalar_t__ is_atom; } ;
typedef  TYPE_1__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*) ; 

__attribute__((used)) static svn_boolean_t
FUNC4(svn_skel_t *skel)
{
  int len = FUNC2(skel);
  svn_skel_t *header;
  int header_len;

  /* the rep has at least two items in it, a HEADER list, and at least
     one piece of kind-specific data. */
  if (len < 2)
    return FALSE;

  /* check the header.  it must have KIND and TXN atoms, and
     optionally 1 or 2 checksums (which is a list form). */
  header = skel->children;
  header_len = FUNC2(header);
  if (! (((header_len == 2)     /* 2 means old repository, checksum absent */
          && (header->children->is_atom)
          && (header->children->next->is_atom))
         || ((header_len == 3)  /* 3 means md5 checksum present */
             && (header->children->is_atom)
             && (header->children->next->is_atom)
             && (FUNC0(header->children->next->next)))
         || ((header_len == 4)  /* 3 means md5 and sha1 checksums present */
             && (header->children->is_atom)
             && (header->children->next->is_atom)
             && (FUNC0(header->children->next->next))
             && (FUNC0(header->children->next->next->next)))))
    return FALSE;

  /* check for fulltext rep. */
  if ((len == 2)
      && (FUNC3(header->children, "fulltext")))
    return TRUE;

  /* check for delta rep. */
  if ((len >= 2)
      && (FUNC3(header->children, "delta")))
    {
      /* it's a delta rep.  check the validity.  */
      svn_skel_t *chunk = skel->children->next;

      /* loop over chunks, checking each one. */
      while (chunk)
        {
          if (! FUNC1(chunk))
            return FALSE;
          chunk = chunk->next;
        }

      /* all good on this delta rep. */
      return TRUE;
    }

  return FALSE;
}