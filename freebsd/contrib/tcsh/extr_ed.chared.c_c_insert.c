
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 scalar_t__ Cursor ;
 scalar_t__ InputLim ;
 scalar_t__ LastChar ;
 scalar_t__ Mark ;

void
c_insert(int num)
{
    Char *cp;

    if (LastChar + num >= InputLim)
 return;

    if (Cursor < LastChar) {
 for (cp = LastChar; cp >= Cursor; cp--)
     cp[num] = *cp;
 if (Mark && Mark > Cursor)
  Mark += num;
    }
    LastChar += num;
}
