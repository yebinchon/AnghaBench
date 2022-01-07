
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SMDB_DATABASE ;


 scalar_t__ malloc (int) ;
 int memset (int *,char,int) ;

SMDB_DATABASE *
smdb_malloc_database()
{
 SMDB_DATABASE *db;

 db = (SMDB_DATABASE *) malloc(sizeof(SMDB_DATABASE));

 if (db != ((void*)0))
  (void) memset(db, '\0', sizeof(SMDB_DATABASE));

 return db;
}
