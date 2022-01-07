
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_db {int dummy; } ;


 int free (struct _citrus_db*) ;

void
_citrus_db_close(struct _citrus_db *db)
{

 free(db);
}
