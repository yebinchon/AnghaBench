
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int time_t ;


 int au_spacetobytes (size_t*,int ,char) ;
 int au_timetosec (int *,int ,char) ;
 scalar_t__ isupper (char) ;

__attribute__((used)) static int
setexpirecond(time_t *age, size_t *size, u_long value, char mult)
{

 if (isupper(mult) || ' ' == mult)
  return (au_spacetobytes(size, value, mult));
 else
  return (au_timetosec(age, value, mult));
}
