
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbputchar_arg {char* da_pbufr; char* da_pnext; int da_remain; int da_nbufr; } ;


 int db_putc (int) ;
 int db_puts (char*) ;

__attribute__((used)) static void
db_putchar(int c, void *arg)
{
 struct dbputchar_arg *dap = arg;

 if (dap->da_pbufr == ((void*)0)) {


  db_putc(c);
 } else {

  *dap->da_pnext++ = c;
  dap->da_remain--;


  *dap->da_pnext = '\0';


  if (dap->da_remain < 2 || c == '\n') {
   db_puts(dap->da_pbufr);
   dap->da_pnext = dap->da_pbufr;
   dap->da_remain = dap->da_nbufr;
   *dap->da_pnext = '\0';
  }
 }
}
