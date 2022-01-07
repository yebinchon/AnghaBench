
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int CHAR ;
 int Draw (int*,int,int) ;
 int LITERAL ;
 int MakeLiteral (int*,int,int ) ;
 int NLSWidth (int) ;
 int Vdraw (int ,int) ;

__attribute__((used)) static void
RefreshPromptpart(Char *buf)
{
    Char *cp;
    int w;

    if (buf == ((void*)0))
 return;
    for (cp = buf; *cp; ) {
 if (*cp & LITERAL) {
     Char *litstart = cp;
     while (*cp & LITERAL)
  cp++;
     if (*cp) {
  w = NLSWidth(*cp & CHAR);
  Vdraw(MakeLiteral(litstart, cp + 1 - litstart, 0), w);
  cp++;
     }
     else {




  break;
     }
 }
 else
     cp += Draw(cp, cp == buf, 1);
    }
}
