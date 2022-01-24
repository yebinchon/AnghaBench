#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int nbr_statements; char** statement_strings; int /*<<< orphan*/ * db3; TYPE_4__** prepared_stmts; } ;
typedef  TYPE_1__ svn_sqlite__db_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ apr_status_t ;
struct TYPE_14__ {scalar_t__ needs_reset; } ;

/* Variables and functions */
 scalar_t__ APR_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ SQLITE_OK ; 
 int STMT_INTERNAL_LAST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_4__*) ; 
 TYPE_2__* FUNC7 (TYPE_4__*) ; 

__attribute__((used)) static apr_status_t
FUNC8(void *data)
{
  svn_sqlite__db_t *db = data;
  svn_error_t *err = SVN_NO_ERROR;
  apr_status_t result;
  int i;

  /* Check to see if we've already closed this database. */
  if (db->db3 == NULL)
    return APR_SUCCESS;

  /* Finalize any prepared statements. */
  if (db->prepared_stmts)
    {
      for (i = 0; i < db->nbr_statements + STMT_INTERNAL_LAST; i++)
        {
          if (db->prepared_stmts[i])
            {
              if (i < db->nbr_statements
                  && db->prepared_stmts[i]->needs_reset)
                {
#ifdef SVN_DEBUG
                  const char *stmt_text = db->statement_strings[i];
                  SVN_UNUSED(stmt_text);

                  SVN_ERR_MALFUNCTION_NO_RETURN();
#else
                  err = FUNC5(err,
                            FUNC7(db->prepared_stmts[i]));
#endif
                }
              err = FUNC5(
                        FUNC6(db->prepared_stmts[i]), err);
            }
        }
    }

  result = FUNC3(db->db3);

  /* If there's a pre-existing error, return it. */
  if (err)
    {
      result = err->apr_err;
      FUNC4(err);
      return result;
    }

  if (result != SQLITE_OK)
    return FUNC0(result); /* ### lossy */

  db->db3 = NULL;

  return APR_SUCCESS;
}