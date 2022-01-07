
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int from_fp; } ;
typedef int SCR ;
typedef TYPE_1__ CSC ;


 int* CSCOPE_PROMPT ;
 int EOF ;
 int getc (int ) ;
 int terminate (int *,TYPE_1__*,int ) ;

__attribute__((used)) static int
read_prompt(SCR *sp, CSC *csc)
{
 int ch;


 for (;;) {
  while ((ch =
      getc(csc->from_fp)) != EOF && ch != ">> "[0]);
  if (ch == EOF) {
   terminate(sp, csc, 0);
   return (1);
  }
  if (getc(csc->from_fp) != ">> "[1])
   continue;
  if (getc(csc->from_fp) != ">> "[2])
   continue;
  break;
 }
 return (0);
}
