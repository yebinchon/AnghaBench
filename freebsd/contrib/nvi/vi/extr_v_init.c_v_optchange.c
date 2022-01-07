
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int SCR ;





 char* O_STR (int *,int const) ;

 int v_buildmcs (int *,char*) ;
 int v_buildps (int *,char*,char*) ;
 int vs_crel (int *,int ) ;

int
v_optchange(SCR *sp, int offset, char *str, u_long *valp)
{
 switch (offset) {
 case 131:
  return (v_buildmcs(sp, str));
 case 130:
  return (v_buildps(sp, str, O_STR(sp, 129)));
 case 129:
  return (v_buildps(sp, O_STR(sp, 130), str));
 case 128:
  return (vs_crel(sp, *valp));
 }
 return (0);
}
