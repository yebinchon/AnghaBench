
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;


 int Isspace (scalar_t__) ;
 int xputchar (char) ;
 int xputwchar (scalar_t__) ;

__attribute__((used)) static void
tw_pr(Char **cmp)
{
    int sp, osp;
    Char *ptr;

    for (; *cmp; cmp++) {
 xputchar('\'');
 for (osp = 0, ptr = *cmp; *ptr; ptr++) {
     sp = Isspace(*ptr);
     if (sp && osp)
  continue;
     xputwchar(*ptr);
     osp = sp;
 }
 xputchar('\'');
 if (cmp[1])
     xputchar(' ');
    }
}
