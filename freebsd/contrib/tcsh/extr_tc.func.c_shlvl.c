
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int * Itoa (int,int ,int ) ;
 int * STR1 ;
 int STRKSHLVL ;
 int STRshlvl ;
 int Unsetenv (int ) ;
 int VAR_READWRITE ;
 int * adrof (int ) ;
 scalar_t__ atoi (char*) ;
 int cleanup_ignore (int *) ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 char* getenv (char*) ;
 scalar_t__ loginsh ;
 int setcopy (int ,int *,int ) ;
 int setv (int ,int *,int ) ;
 int tsetenv (int ,int *) ;
 int unsetv (int ) ;
 int xfree ;

void
shlvl(int val)
{
    char *cp;

    if ((cp = getenv("SHLVL")) != ((void*)0)) {

 if (loginsh)
     val = 1;
 else
     val += atoi(cp);

 if (val <= 0) {
     if (adrof(STRshlvl) != ((void*)0))
  unsetv(STRshlvl);
     Unsetenv(STRKSHLVL);
 }
 else {
     Char *p;

     p = Itoa(val, 0, 0);
     cleanup_push(p, xfree);
     setv(STRshlvl, p, VAR_READWRITE);
     cleanup_ignore(p);
     cleanup_until(p);
     tsetenv(STRKSHLVL, p);
 }
    }
    else {
 setcopy(STRshlvl, STR1, VAR_READWRITE);
 tsetenv(STRKSHLVL, STR1);
    }
}
