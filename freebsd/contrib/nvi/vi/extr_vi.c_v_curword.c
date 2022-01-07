
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {size_t klen; char* keyw; int keywlen; } ;
typedef TYPE_1__ VI_PRIVATE ;
struct TYPE_11__ {size_t cno; int lno; } ;
typedef TYPE_2__ SCR ;
typedef int CHAR_T ;


 int BINC_RETW (TYPE_2__*,char*,int ,size_t) ;
 int DBG_FATAL ;
 scalar_t__ ISSPACE (int ) ;
 int MEMMOVE (char*,int *,size_t) ;
 int M_BERR ;
 TYPE_1__* VIP (TYPE_2__*) ;
 scalar_t__ db_get (TYPE_2__*,int ,int ,int **,size_t*) ;
 scalar_t__ inword (int ) ;
 int msgq (TYPE_2__*,int ,char*) ;
 int vs_refresh (TYPE_2__*,int ) ;

int
v_curword(SCR *sp)
{
 VI_PRIVATE *vip;
 size_t beg, end, len;
 int moved;
 CHAR_T *p;

 if (db_get(sp, sp->lno, DBG_FATAL, &p, &len))
  return (1);
 for (moved = 0,
     beg = sp->cno; beg < len && ISSPACE(p[beg]); moved = 1, ++beg);
 if (beg >= len) {
  msgq(sp, M_BERR, "212|Cursor not in a word");
  return (1);
 }
 if (moved) {
  sp->cno = beg;
  (void)vs_refresh(sp, 0);
 }
 for (end = beg; ++end < len && inword(p[end]););

 vip = VIP(sp);
 vip->klen = len = (end - beg);
 BINC_RETW(sp, vip->keyw, vip->keywlen, len+1);
 MEMMOVE(vip->keyw, p + beg, len);
 vip->keyw[len] = '\0';
 return (0);
}
