
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {scalar_t__ size; int * data; } ;
typedef TYPE_1__ DBT ;


 size_t MIN (scalar_t__,scalar_t__) ;
 int printf (char*,unsigned long,...) ;

__attribute__((used)) static void
compare(DBT *db1, DBT *db2)
{
 size_t len;
 u_char *p1, *p2;

 if (db1->size != db2->size)
  printf("compare failed: key->data len %zu != data len %zu\n",
      db1->size, db2->size);

 len = MIN(db1->size, db2->size);
 for (p1 = db1->data, p2 = db2->data; len--;)
  if (*p1++ != *p2++) {
   printf("compare failed at offset %lu\n",
       (unsigned long)(p1 - (u_char *)db1->data));
   break;
  }
}
