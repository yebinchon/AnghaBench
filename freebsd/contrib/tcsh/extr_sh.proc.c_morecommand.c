
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int Char ;


 size_t cmdmax ;
 int cmdp ;
 int * cmdstr ;
 int * xrealloc (int *,size_t) ;

__attribute__((used)) static void
morecommand(size_t s)
{
    Char *ncmdstr;
    ptrdiff_t d;

    cmdmax += s;
    ncmdstr = xrealloc(cmdstr, cmdmax * sizeof(*cmdstr));
    d = ncmdstr - cmdstr;
    cmdstr = ncmdstr;
    cmdp += d;
}
