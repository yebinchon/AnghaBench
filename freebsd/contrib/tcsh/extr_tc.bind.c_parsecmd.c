
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct KeyFuncs {int func; scalar_t__ name; } ;
typedef int KEYCMD ;
typedef int Char ;


 int CGETS (int,int,char*) ;
 struct KeyFuncs* FuncNames ;
 int short2str (int *) ;
 scalar_t__ strcmp (int ,scalar_t__) ;
 int xprintf (int ,int *) ;

__attribute__((used)) static KEYCMD
parsecmd(Char *str)
{
    struct KeyFuncs *fp;

    for (fp = FuncNames; fp->name; fp++) {
 if (strcmp(short2str(str), fp->name) == 0) {
     return (KEYCMD) fp->func;
 }
    }
    xprintf(CGETS(20, 3, "Bad command name: %S\n"), str);
    return 0;
}
