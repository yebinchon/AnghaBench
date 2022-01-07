
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_5__ {TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_4__ {int mutex; } ;


 char* sqlite3VdbeExpandSql (TYPE_2__*,char const*) ;
 int sqlite3_mutex_enter (int ) ;
 int sqlite3_mutex_leave (int ) ;
 char* sqlite3_sql (int *) ;

char *sqlite3_expanded_sql(sqlite3_stmt *pStmt){



  char *z = 0;
  const char *zSql = sqlite3_sql(pStmt);
  if( zSql ){
    Vdbe *p = (Vdbe *)pStmt;
    sqlite3_mutex_enter(p->db->mutex);
    z = sqlite3VdbeExpandSql(p, zSql);
    sqlite3_mutex_leave(p->db->mutex);
  }
  return z;

}
