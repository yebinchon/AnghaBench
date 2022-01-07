
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int openDatabase (char const*,int **,unsigned int,char const*) ;

int sqlite3_open_v2(
  const char *filename,
  sqlite3 **ppDb,
  int flags,
  const char *zVfs
){
  return openDatabase(filename, ppDb, (unsigned int)flags, zVfs);
}
