
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int SCR ;
typedef int OPTION ;


 scalar_t__ MAXIMUM_SCREEN_COLS ;
 scalar_t__ MINIMUM_SCREEN_COLS ;
 int M_ERR ;
 int msgq (int *,int ,char*,scalar_t__) ;

int
f_columns(
 SCR *sp,
 OPTION *op,
 char *str,
 u_long *valp)
{

 if (*valp < MINIMUM_SCREEN_COLS) {
  msgq(sp, M_ERR, "040|Screen columns too small, less than %d",
      MINIMUM_SCREEN_COLS);
  return (1);
 }
 if (*valp > 500) {
  msgq(sp, M_ERR, "041|Screen columns too large, greater than %d",
      500);
  return (1);
 }
 return (0);
}
