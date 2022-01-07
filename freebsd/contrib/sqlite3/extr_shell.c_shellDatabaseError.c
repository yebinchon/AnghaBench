
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 char* sqlite3_errmsg (int *) ;
 int stderr ;
 int utf8_printf (int ,char*,char const*) ;

__attribute__((used)) static int shellDatabaseError(sqlite3 *db){
  const char *zErr = sqlite3_errmsg(db);
  utf8_printf(stderr, "Error: %s\n", zErr);
  return 1;
}
