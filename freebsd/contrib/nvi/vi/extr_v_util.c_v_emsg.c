
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vim_t ;
typedef int SCR ;


 int M_BERR ;
 int M_ERR ;
 int msgq (int *,int ,char*,...) ;

void
v_emsg(SCR *sp, char *p, vim_t which)
{
 switch (which) {
 case 135:
  msgq(sp, M_ERR,
      "201|Buffers should be specified before the command");
  break;
 case 134:
  msgq(sp, M_BERR, "209|The file is empty");
  break;
 case 133:
  msgq(sp, M_BERR, "202|Already at end-of-file");
  break;
 case 132:
  msgq(sp, M_BERR, "203|Already at end-of-line");
  break;
 case 131:
 case 130:
  msgq(sp,
      which == 130 ? M_BERR : M_ERR,
      "204|%s isn't a vi command", p);
  break;
 case 128:
  msgq(sp, M_ERR, "Window resize interrupted text input mode");
  break;
 case 129:
  msgq(sp, M_ERR, "205|Usage: %s", p);
  break;
 }
}
