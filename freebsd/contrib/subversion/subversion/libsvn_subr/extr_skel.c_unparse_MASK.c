#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ len; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_11__ {char* data; scalar_t__ len; struct TYPE_11__* next; struct TYPE_11__* children; scalar_t__ is_atom; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SVN_INT64_BUFFER_SIZE ; 
 scalar_t__ FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*) ; 

__attribute__((used)) static svn_stringbuf_t *
FUNC6(const svn_skel_t *skel, svn_stringbuf_t *str)
{
  if (skel->is_atom)
    {
      /* Append an atom to STR.  */
      if (FUNC5(skel))
        FUNC3(str, skel->data, skel->len);
      else
        {
          /* Append the length to STR.  Ensure enough space for at least
           * one 64 bit int. */
          char buf[200 + SVN_INT64_BUFFER_SIZE];
          apr_size_t length_len;

          length_len = FUNC1(buf, skel->len);

          FUNC0(length_len > 0);

          /* Make sure we have room for the length, the space, and the
             atom's contents.  */
          FUNC4(str, str->len + length_len + 1 + skel->len);
          FUNC3(str, buf, length_len);
          FUNC2(str, ' ');
          FUNC3(str, skel->data, skel->len);
        }
    }
  else
    {
      /* Append a list to STR: an opening parenthesis, the list elements
       * separated by a space, and a closing parenthesis.  */
      svn_skel_t *child;

      FUNC2(str, '(');

      for (child = skel->children; child; child = child->next)
        {
          FUNC6(child, str);
          if (child->next)
            FUNC2(str, ' ');
        }

      FUNC2(str, ')');
    }

  return str;
}