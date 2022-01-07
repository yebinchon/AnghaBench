
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char* Cursor ;
 char HIST ;
 char* InputBuf ;
 int Refresh () ;
 int c_excl (char*) ;

__attribute__((used)) static int
c_substitute(void)
{
    Char *p;
    int nr_exp;





    for (p = Cursor - 1;
  p > InputBuf && *p != ' ' && *p != '\t' && *p && *p != HIST; --p)
 continue;




    if (p >= InputBuf && HIST != '\0' && *p == HIST)
 nr_exp = c_excl(p);
    else
        nr_exp = 0;
    Refresh();

    return nr_exp;
}
