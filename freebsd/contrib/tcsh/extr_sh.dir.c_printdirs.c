
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct directory {int * di_name; struct directory* di_prev; } ;
typedef int Char ;


 int DIR_LINE ;
 int DIR_LONG ;
 int DIR_VERT ;
 scalar_t__ Strlen (int *) ;
 int TermH ;
 struct directory* dcwd ;
 struct directory dhead ;
 int * getusername (int **) ;
 int xprintf (char*,int *,...) ;
 int xputchar (char) ;

__attribute__((used)) static void
printdirs(int dflag)
{
    struct directory *dp;
    Char *s, *user;
    int idx, len, cur;

    dp = dcwd;
    idx = 0;
    cur = 0;
    do {
 if (dp == &dhead)
     continue;
 if (dflag & DIR_VERT) {
     xprintf("%d\t", idx++);
     cur = 0;
 }
 s = dp->di_name;
 user = ((void*)0);
 if (!(dflag & DIR_LONG) && (user = getusername(&s)) != ((void*)0))
     len = (int) (Strlen(user) + Strlen(s) + 2);
 else
     len = (int) (Strlen(s) + 1);

 cur += len;
 if ((dflag & DIR_LINE) && cur >= TermH - 1 && len < TermH) {
     xputchar('\n');
     cur = len;
 }
 if (user)
     xprintf("~%S", user);
 xprintf("%-S%c", s, (dflag & DIR_VERT) ? '\n' : ' ');
    } while ((dp = dp->di_prev) != dcwd);
    if (!(dflag & DIR_VERT))
 xputchar('\n');
}
