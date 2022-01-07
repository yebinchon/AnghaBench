
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* recno_t ;
struct TYPE_5__ {void* lno; } ;
typedef TYPE_1__ SCR ;
typedef char CHAR_T ;


 int F_SET (TYPE_1__*,int ) ;
 int SC_SCR_TOP ;
 int db_get (TYPE_1__*,void*,int ,char**,size_t*) ;

__attribute__((used)) static void
file_comment(SCR *sp)
{
 recno_t lno;
 size_t len;
 CHAR_T *p;

 for (lno = 1; !db_get(sp, lno, 0, &p, &len) && len == 0; ++lno);
 if (p == ((void*)0))
  return;
 if (p[0] == '#') {
  F_SET(sp, SC_SCR_TOP);
  while (!db_get(sp, ++lno, 0, &p, &len))
   if (len < 1 || p[0] != '#') {
    sp->lno = lno;
    return;
   }
 } else if (len > 1 && p[0] == '/' && p[1] == '*') {
  F_SET(sp, SC_SCR_TOP);
  do {
   for (; len > 1; --len, ++p)
    if (p[0] == '*' && p[1] == '/') {
     sp->lno = lno;
     return;
    }
  } while (!db_get(sp, ++lno, 0, &p, &len));
 } else if (len > 1 && p[0] == '/' && p[1] == '/') {
  F_SET(sp, SC_SCR_TOP);
  p += 2;
  len -= 2;
  do {
   for (; len > 1; --len, ++p)
    if (p[0] == '/' && p[1] == '/') {
     sp->lno = lno;
     return;
    }
  } while (!db_get(sp, ++lno, 0, &p, &len));
 }
}
