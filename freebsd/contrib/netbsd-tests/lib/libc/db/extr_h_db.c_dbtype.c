
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBTYPE ;


 int DB_BTREE ;
 int DB_HASH ;
 int DB_RECNO ;
 int errx (int,char*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static DBTYPE
dbtype(const char *s)
{
 if (!strcmp(s, "btree"))
  return DB_BTREE;
 if (!strcmp(s, "hash"))
  return DB_HASH;
 if (!strcmp(s, "recno"))
  return DB_RECNO;
 errx(1, "%s: unknown type (use btree, hash or recno)", s);

}
