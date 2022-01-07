
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_7__ {int defscroll; } ;
typedef TYPE_1__ SCR ;
typedef int OPTION ;


 int MAXIMUM_SCREEN_ROWS ;
 int MINIMUM_SCREEN_ROWS ;
 int M_ERR ;
 int OS_DEF ;
 int O_D_VAL (TYPE_1__*,int ) ;
 int O_LINES ;
 int O_VAL (TYPE_1__*,int ) ;
 int O_WINDOW ;
 int msgq (TYPE_1__*,int ,char*,int) ;
 int o_set (TYPE_1__*,int ,int ,int *,int) ;

int
f_lines(
 SCR *sp,
 OPTION *op,
 char *str,
 u_long *valp)
{

 if (*valp < MINIMUM_SCREEN_ROWS) {
  msgq(sp, M_ERR, "042|Screen lines too small, less than %d",
      MINIMUM_SCREEN_ROWS);
  return (1);
 }
 if (*valp > 500) {
  msgq(sp, M_ERR, "043|Screen lines too large, greater than %d",
      500);
  return (1);
 }





 o_set(sp, O_LINES, 0, ((void*)0), *valp);
 if (*valp == 1) {
  sp->defscroll = 1;

  if (O_VAL(sp, O_WINDOW) == O_D_VAL(sp, O_WINDOW) ||
      O_VAL(sp, O_WINDOW) > *valp) {
   o_set(sp, O_WINDOW, 0, ((void*)0), 1);
   o_set(sp, O_WINDOW, OS_DEF, ((void*)0), 1);
  }
 } else {
  sp->defscroll = (*valp - 1) / 2;

  if (O_VAL(sp, O_WINDOW) == O_D_VAL(sp, O_WINDOW) ||
      O_VAL(sp, O_WINDOW) > *valp) {
   o_set(sp, O_WINDOW, 0, ((void*)0), *valp - 1);
   o_set(sp, O_WINDOW, OS_DEF, ((void*)0), *valp - 1);
  }
 }
 return (0);
}
