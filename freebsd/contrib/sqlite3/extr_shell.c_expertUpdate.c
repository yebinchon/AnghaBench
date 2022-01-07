
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int sqlite3_vtab ;
typedef int sqlite3_value ;


 int SQLITE_OK ;

__attribute__((used)) static int expertUpdate(
  sqlite3_vtab *pVtab,
  int nData,
  sqlite3_value **azData,
  sqlite_int64 *pRowid
){
  (void)pVtab;
  (void)nData;
  (void)azData;
  (void)pRowid;
  return SQLITE_OK;
}
