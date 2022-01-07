
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int nbr_statements; char** statement_strings; int * db3; TYPE_4__** prepared_stmts; } ;
typedef TYPE_1__ svn_sqlite__db_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef scalar_t__ apr_status_t ;
struct TYPE_14__ {scalar_t__ needs_reset; } ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ SQLITE_ERROR_CODE (scalar_t__) ;
 scalar_t__ SQLITE_OK ;
 int STMT_INTERNAL_LAST ;
 int SVN_ERR_MALFUNCTION_NO_RETURN () ;
 TYPE_2__* SVN_NO_ERROR ;
 int SVN_UNUSED (char const*) ;
 scalar_t__ sqlite3_close (int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_compose_create (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* svn_sqlite__finalize (TYPE_4__*) ;
 TYPE_2__* svn_sqlite__reset (TYPE_4__*) ;

__attribute__((used)) static apr_status_t
close_apr(void *data)
{
  svn_sqlite__db_t *db = data;
  svn_error_t *err = SVN_NO_ERROR;
  apr_status_t result;
  int i;


  if (db->db3 == ((void*)0))
    return APR_SUCCESS;


  if (db->prepared_stmts)
    {
      for (i = 0; i < db->nbr_statements + STMT_INTERNAL_LAST; i++)
        {
          if (db->prepared_stmts[i])
            {
              if (i < db->nbr_statements
                  && db->prepared_stmts[i]->needs_reset)
                {






                  err = svn_error_compose_create(err,
                            svn_sqlite__reset(db->prepared_stmts[i]));

                }
              err = svn_error_compose_create(
                        svn_sqlite__finalize(db->prepared_stmts[i]), err);
            }
        }
    }

  result = sqlite3_close(db->db3);


  if (err)
    {
      result = err->apr_err;
      svn_error_clear(err);
      return result;
    }

  if (result != SQLITE_OK)
    return SQLITE_ERROR_CODE(result);

  db->db3 = ((void*)0);

  return APR_SUCCESS;
}
