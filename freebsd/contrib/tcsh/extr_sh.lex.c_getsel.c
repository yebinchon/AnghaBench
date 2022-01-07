
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eChar ;


 int ERR_BADBANGARG ;
 int Isdigit (int) ;
 scalar_t__ any (char*,int) ;
 int getC (int ) ;
 int quesarg ;
 int seterror (int ) ;
 int unreadc (int) ;

__attribute__((used)) static int
getsel(int *al, int *ar, int dol)
{
    eChar c = getC(0);
    int i;
    int first = *al < 0;

    switch (c) {

    case '%':
 if (quesarg == -1) {
     seterror(ERR_BADBANGARG);
     return (0);
 }
 if (*al < 0)
     *al = quesarg;
 *ar = quesarg;
 break;

    case '-':
 if (*al < 0) {
     *al = 0;
     *ar = dol - 1;
     unreadc(c);
 }
 return (1);

    case '^':
 if (*al < 0)
     *al = 1;
 *ar = 1;
 break;

    case '$':
 if (*al < 0)
     *al = dol;
 *ar = dol;
 break;

    case '*':
 if (*al < 0)
     *al = 1;
 *ar = dol;
 if (*ar < *al) {
     *ar = 0;
     *al = 1;
     return (1);
 }
 break;

    default:
 if (Isdigit(c)) {
     i = 0;
     while (Isdigit(c)) {
  i = i * 10 + c - '0';
  c = getC(0);
     }
     if (i < 0)
  i = dol + 1;
     if (*al < 0)
  *al = i;
     *ar = i;
 }
 else if (*al < 0)
     *al = 0, *ar = dol;
 else
     *ar = dol - 1;
 unreadc(c);
 break;
    }
    if (first) {
 c = getC(0);
 unreadc(c);
 if (any("-$*", c))
     return (1);
    }
    if (*al > *ar || *ar > dol) {
 seterror(ERR_BADBANGARG);
 return (0);
    }
    return (1);

}
