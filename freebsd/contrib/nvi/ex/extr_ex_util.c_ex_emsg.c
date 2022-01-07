
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int exm_t ;
typedef int SCR ;
 int M_ERR ;
 int msgq (int *,int ,char*,...) ;
 int msgq_str (int *,int ,char*,char*) ;

void
ex_emsg(SCR *sp, char *p, exm_t which)
{
 switch (which) {
 case 138:
  msgq(sp, M_ERR, "168|Buffer %s is empty", p);
  break;
 case 137:
   msgq_str(sp, M_ERR, p,
       "144|%s: expanded into too many file names");
  break;
 case 136:
  msgq(sp, M_ERR,
      "283|The %s command requires the ex terminal interface", p);
  break;
 case 135:
  msgq(sp, M_ERR,
      "272|That form of %s requires the ex terminal interface",
      p);
  break;
 case 134:
  if (p == ((void*)0))
   msgq(sp, M_ERR,
       "274|Command failed, no file read in yet.");
  else
   msgq(sp, M_ERR,
 "173|The %s command requires that a file have already been read in", p);
  break;
 case 133:
  msgq(sp, M_ERR, "171|No previous buffer to execute");
  break;
 case 132:
  msgq(sp, M_ERR, "172|No previous regular expression");
  break;
 case 131:
  msgq(sp, M_ERR, "230|This screen may not be suspended");
  break;
 case 130:
  msgq(sp, M_ERR,
"290|The %s command is not supported when the secure edit option is set", p);
  break;
 case 129:
  msgq(sp, M_ERR,
"284|That form of %s is not supported when the secure edit option is set", p);
  break;
 case 128:
  msgq(sp, M_ERR, "174|Usage: %s", p);
  break;
 }
}
