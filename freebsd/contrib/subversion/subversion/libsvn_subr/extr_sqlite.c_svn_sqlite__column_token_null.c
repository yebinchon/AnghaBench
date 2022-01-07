
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_token_map_t ;
struct TYPE_3__ {int s3stmt; } ;
typedef TYPE_1__ svn_sqlite__stmt_t ;


 scalar_t__ sqlite3_column_text (int ,int) ;
 int svn_token__from_word_strict (int const*,char const*) ;

int
svn_sqlite__column_token_null(svn_sqlite__stmt_t *stmt,
                              int column,
                              const svn_token_map_t *map,
                              int null_val)
{

  const char *word = (const char *)sqlite3_column_text(stmt->s3stmt, column);

  if (!word)
    return null_val;

  return svn_token__from_word_strict(map, word);
}
