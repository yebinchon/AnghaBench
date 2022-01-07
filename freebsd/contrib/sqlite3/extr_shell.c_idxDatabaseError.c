
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int sqlite3_errmsg (int *) ;
 char* sqlite3_mprintf (char*,int ) ;

__attribute__((used)) static void idxDatabaseError(
  sqlite3 *db,
  char **pzErrmsg
){
  *pzErrmsg = sqlite3_mprintf("%s", sqlite3_errmsg(db));
}
