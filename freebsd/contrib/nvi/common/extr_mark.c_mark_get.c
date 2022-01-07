
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int mtype_t ;
struct TYPE_7__ {scalar_t__ name; int lno; scalar_t__ cno; } ;
struct TYPE_6__ {int lno; scalar_t__ cno; } ;
typedef int SCR ;
typedef TYPE_1__ MARK ;
typedef TYPE_2__ LMARK ;
typedef scalar_t__ ARG_CHAR_T ;


 scalar_t__ ABSMARK1 ;
 scalar_t__ ABSMARK2 ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int KEY_NAME (int *,scalar_t__) ;
 int MARK_DELETED ;
 int db_exist (int *,int) ;
 TYPE_2__* mark_find (int *,scalar_t__) ;
 int msgq (int *,int ,char*,int ) ;

int
mark_get(
 SCR *sp,
 ARG_CHAR_T key,
 MARK *mp,
 mtype_t mtype)
{
 LMARK *lmp;

 if (key == ABSMARK2)
  key = ABSMARK1;

 lmp = mark_find(sp, key);
 if (lmp == ((void*)0) || lmp->name != key) {
  msgq(sp, mtype, "017|Mark %s: not set", KEY_NAME(sp, key));
  return (1);
 }
 if (F_ISSET(lmp, MARK_DELETED)) {
  msgq(sp, mtype,
      "018|Mark %s: the line was deleted", KEY_NAME(sp, key));
  return (1);
 }






 if ((lmp->lno != 1 || lmp->cno != 0) && !db_exist(sp, lmp->lno)) {
  msgq(sp, mtype,
      "019|Mark %s: cursor position no longer exists",
      KEY_NAME(sp, key));
  return (1);
 }
 mp->lno = lmp->lno;
 mp->cno = lmp->cno;
 return (0);
}
