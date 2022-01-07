
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCR ;


 scalar_t__ F_ISSET (int *,int) ;
 int O_FLASH ;
 scalar_t__ O_ISSET (int *,int ) ;
 int SC_EX ;
 int SC_SCR_EX ;
 int SC_SCR_EXWROTE ;
 int STDOUT_FILENO ;
 int beep () ;
 int flash () ;
 int write (int ,char*,int) ;

int
cl_bell(SCR *sp)
{
 if (F_ISSET(sp, SC_EX | SC_SCR_EXWROTE | SC_SCR_EX))
  (void)write(STDOUT_FILENO, "\07", 1);
 else {




  if (O_ISSET(sp, O_FLASH))
   (void)flash();
  else
   (void)beep();
 }
 return (0);
}
