
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;
typedef int CCRETVAL ;


 int ActionFlag ;
 int CC_ERROR ;
 int CC_NORM ;
 int CC_REFRESH ;
 scalar_t__* Cursor ;
 scalar_t__* InputBuf ;
 int RefCursor () ;
 int TCSHOP_DELETE ;
 int c_delfini () ;

__attribute__((used)) static CCRETVAL
v_csearch_back(Char ch, int count, int tflag)
{
    Char *cp;

    cp = Cursor;
    while (count--) {
 if (*cp == ch)
     cp--;
 while (cp > InputBuf && *cp != ch)
     cp--;
    }

    if (cp < InputBuf || (cp == InputBuf && *cp != ch))
 return(CC_ERROR);

    if (*cp == ch && tflag)
 cp++;

    Cursor = cp;

    if (ActionFlag & TCSHOP_DELETE) {
 Cursor++;
 c_delfini();
 return(CC_REFRESH);
    }

    RefCursor();
    return(CC_NORM);
}
