#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  number; int /*<<< orphan*/  date; } ;
struct TYPE_6__ {TYPE_1__ value; int /*<<< orphan*/  kind; } ;
typedef  TYPE_2__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_opt_revision_date ; 
 int /*<<< orphan*/  svn_opt_revision_number ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *FUNC8(svn_opt_revision_t *revision, char *str,
                           apr_pool_t *pool)
{
  char *end, save;

  /* Allow any number of 'r's to prefix a revision number, because
     that way if a script pastes svn output into another svn command
     (like "svn log -r${REV_COPIED_FROM_OUTPUT}"), it'll Just Work,
     even when compounded.

     As it happens, none of our special revision words begins with
     "r".  If any ever do, then this code will have to get smarter.

     Incidentally, this allows "r{DATE}".  We could avoid that with
     some trivial code rearrangement, but it's not clear what would
     be gained by doing so. */
  while (*str == 'r')
    str++;

  if (*str == '{')
    {
      svn_boolean_t matched;
      apr_time_t tm;
      svn_error_t *err;

      /* Brackets denote a date. */
      str++;
      end = FUNC3(str, '}');
      if (!end)
        return NULL;
      *end = '\0';
      err = FUNC7(&matched, &tm, str, FUNC1(), pool);
      if (err)
        {
          FUNC6(err);
          return NULL;
        }
      if (!matched)
        return NULL;
      revision->kind = svn_opt_revision_date;
      revision->value.date = tm;
      return end + 1;
    }
  else if (FUNC5(*str))
    {
      /* It's a number. */
      end = str + 1;
      while (FUNC5(*end))
        end++;
      save = *end;
      *end = '\0';
      revision->kind = svn_opt_revision_number;
      revision->value.number = FUNC0(str);
      *end = save;
      return end;
    }
  else if (FUNC4(*str))
    {
      end = str + 1;
      while (FUNC4(*end))
        end++;
      save = *end;
      *end = '\0';
      if (FUNC2(revision, str) != 0)
        return NULL;
      *end = save;
      return end;
    }
  else
    return NULL;
}