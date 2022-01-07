
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int sqlite3_close (int *) ;
 int sqlite3_errmsg (int *) ;
 int stderr ;
 int utf8_printf (int ,char*,int,int ) ;

void close_db(sqlite3 *db){
  int rc = sqlite3_close(db);
  if( rc ){
    utf8_printf(stderr, "Error: sqlite3_close() returns %d: %s\n",
        rc, sqlite3_errmsg(db));
  }
}
