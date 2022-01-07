
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int exadj_t ;
struct TYPE_3__ {int * el; int * cup; int * cuu1; } ;
typedef int SCR ;
typedef TYPE_1__ CL_PRIVATE ;


 TYPE_1__* CLP (int *) ;


 int LINES ;
 int MAX_CHARACTER_COLUMNS ;
 int abort () ;
 int cl_putchar ;
 int fflush (int ) ;
 int putchar (char) ;
 int stdout ;
 int * tgoto (int *,int ,int ) ;
 int tputs (int *,int,int ) ;

int
cl_ex_adjust(SCR *sp, exadj_t action)
{
 CL_PRIVATE *clp;
 int cnt;

 clp = CLP(sp);
 switch (action) {
 case 128:

  if (clp->cuu1 != ((void*)0))
   (void)tputs(clp->cuu1, 1, cl_putchar);
  else if (clp->cup != ((void*)0))
   (void)tputs(tgoto(clp->cup,
       0, LINES - 2), 1, cl_putchar);
  else
   return (0);

 case 129:

  if (clp->el != ((void*)0)) {
   (void)putchar('\r');
   (void)tputs(clp->el, 1, cl_putchar);
  } else {
   for (cnt = 0; cnt < MAX_CHARACTER_COLUMNS; ++cnt)
    (void)putchar('\b');
   for (cnt = 0; cnt < MAX_CHARACTER_COLUMNS; ++cnt)
    (void)putchar(' ');
   (void)putchar('\r');
   (void)fflush(stdout);
  }
  break;
 default:
  abort();
 }
 return (0);
}
