
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char* Cursor ;
 char HIST ;
 char* InputBuf ;
 char* c_expand (char*) ;

__attribute__((used)) static int
c_excl(Char *p)
{
    int i;
    Char *q;
    int nr_exp;





    if ((p[1] == ' ' || p[1] == '\t') &&
 (p[-1] == ' ' || p[-1] == '\t' || p[-1] == '>')) {
 for (q = p - 1; q > InputBuf && (*q == ' ' || *q == '\t'); --q)
     continue;
 if (*q == '>')
     ++p;
    }
    else {
 while (*p != ' ' && *p != '\t' && p > InputBuf)
     --p;
    }






    nr_exp = 0;
    for (;;) {
 if (HIST != '\0')
     while (*p != HIST && p < Cursor)
  ++p;
 for (i = 1; (p - i) >= InputBuf && p[-i] == '\\'; i++)
     continue;
 if (i % 2 == 0)
     ++p;
 if (p >= Cursor)
     return nr_exp;
 if (i % 2 == 1) {
     p = c_expand(p);
     ++nr_exp;
 }
    }
}
