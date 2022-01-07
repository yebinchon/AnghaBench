
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FICL_VM ;


 int IGNORE (int *) ;
 int putchar (char) ;

void ficlTextOut(FICL_VM *pVM, char *msg, int fNewline)
{
    IGNORE(pVM);

    while(*msg != 0)
 putchar(*(msg++));
    if (fNewline)
 putchar('\n');

   return;
}
