
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
typedef int pgno_t ;
struct TYPE_7__ {int index; int pgno; } ;
struct TYPE_8__ {int * data; scalar_t__ size; } ;
struct TYPE_10__ {TYPE_1__ pg; TYPE_2__ key; } ;
struct TYPE_9__ {TYPE_5__ bt_cursor; } ;
typedef TYPE_3__ BTREE ;


 int CURS_ACQUIRE ;
 int CURS_AFTER ;
 int CURS_BEFORE ;
 int CURS_INIT ;
 int F_CLR (TYPE_5__*,int) ;
 int F_SET (TYPE_5__*,int ) ;
 int free (int *) ;

void
__bt_setcur(BTREE *t, pgno_t pgno, u_int idx)
{

 if (t->bt_cursor.key.data != ((void*)0)) {
  free(t->bt_cursor.key.data);
  t->bt_cursor.key.size = 0;
  t->bt_cursor.key.data = ((void*)0);
 }
 F_CLR(&t->bt_cursor, CURS_ACQUIRE | CURS_AFTER | CURS_BEFORE);


 t->bt_cursor.pg.pgno = pgno;
 t->bt_cursor.pg.index = idx;
 F_SET(&t->bt_cursor, CURS_INIT);
}
