
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int scr_keyval_t ;
struct TYPE_9__ {int value; scalar_t__ ch; } ;
struct TYPE_8__ {TYPE_1__* gp; } ;
struct TYPE_7__ {scalar_t__ (* scr_keyval ) (TYPE_2__*,int ,scalar_t__*,int*) ;} ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ KEYLIST ;
typedef scalar_t__ CHAR_T ;


 int K_NOTUSED ;
 TYPE_3__* keylist ;
 size_t nkeylist ;
 scalar_t__ stub1 (TYPE_2__*,int ,scalar_t__*,int*) ;

__attribute__((used)) static void
v_keyval(
 SCR *sp,
 int val,
 scr_keyval_t name)
{
 KEYLIST *kp;
 CHAR_T ch;
 int dne;


 if (sp->gp->scr_keyval(sp, name, &ch, &dne))
  return;
 if (dne)
  return;


 for (kp = keylist; kp->value != K_NOTUSED; ++kp)
  if (kp->ch == ch) {
   kp->value = val;
   return;
  }


 if (kp->value == K_NOTUSED) {
  keylist[nkeylist].ch = ch;
  keylist[nkeylist].value = val;
  ++nkeylist;
 }
}
