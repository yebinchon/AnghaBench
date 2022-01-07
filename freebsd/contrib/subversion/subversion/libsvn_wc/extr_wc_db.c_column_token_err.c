
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
typedef TYPE_1__ svn_token_map_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;


 int SVN_ERR_WC_CORRUPT ;
 int _ (char*) ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_error_createf (int ,int *,int ,int) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int * svn_token__from_word_err (int*,TYPE_1__ const*,char const*) ;

__attribute__((used)) static int
column_token_err(svn_error_t **err,
                 svn_sqlite__stmt_t *stmt,
                 int column,
                 const svn_token_map_t *map)
{
  svn_error_t *err2;
  const char *word = svn_sqlite__column_text(stmt, column, ((void*)0));
  int value;


  err2 = svn_token__from_word_err(&value, map, word);

  if (err2)
    {
      *err = svn_error_compose_create(
                *err,
                svn_error_createf(
                    SVN_ERR_WC_CORRUPT, err2,
                    _("Encountered invalid node state in column %d of "
                      "info query to working copy database"),
                    column));
      value = map[0].val;
    }

  return value;
}
