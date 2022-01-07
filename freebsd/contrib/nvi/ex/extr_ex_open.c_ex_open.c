
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;
typedef int EXCMD ;


 int M_ERR ;
 int O_ISSET (int *,int ) ;
 int O_OPEN ;
 int msgq (int *,int ,char*) ;

int
ex_open(SCR *sp, EXCMD *cmdp)
{

 if (!O_ISSET(sp, O_OPEN)) {
  msgq(sp, M_ERR,
     "140|The open command requires that the open option be set");
  return (1);
 }

 msgq(sp, M_ERR, "141|The open command is not yet implemented");
 return (1);
}
