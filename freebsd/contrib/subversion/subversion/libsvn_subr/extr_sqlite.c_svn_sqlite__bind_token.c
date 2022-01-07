
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_token_map_t ;
struct TYPE_3__ {int db; int s3stmt; } ;
typedef TYPE_1__ svn_sqlite__stmt_t ;
typedef int svn_error_t ;


 int SQLITE_ERR (int ,int ) ;
 int SQLITE_STATIC ;
 int * SVN_NO_ERROR ;
 int sqlite3_bind_text (int ,int,char const*,int,int ) ;
 char* svn_token__to_word (int const*,int) ;

svn_error_t *
svn_sqlite__bind_token(svn_sqlite__stmt_t *stmt,
                       int slot,
                       const svn_token_map_t *map,
                       int value)
{
  const char *word = svn_token__to_word(map, value);

  SQLITE_ERR(sqlite3_bind_text(stmt->s3stmt, slot, word, -1, SQLITE_STATIC),
             stmt->db);
  return SVN_NO_ERROR;
}
