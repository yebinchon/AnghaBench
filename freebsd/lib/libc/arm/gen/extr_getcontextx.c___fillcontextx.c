
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucontextx {int ucontext; } ;


 int __fillcontextx2 (char*) ;
 int getcontext (int *) ;

int
__fillcontextx(char *ctx)
{
 struct ucontextx *ucxp;

 ucxp = (struct ucontextx *)ctx;
 if (getcontext(&ucxp->ucontext) == -1)
  return (-1);
 __fillcontextx2(ctx);
 return (0);
}
