
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int STRPWD ;
 int STRcwd ;
 int STRowd ;
 int VAR_NOGLOB ;
 int VAR_READWRITE ;
 int setcopy (int ,int *,int) ;
 int tsetenv (int ,int *) ;
 int * varval (int ) ;

__attribute__((used)) static void
dset(Char *dp)
{




    setcopy(STRowd, varval(STRcwd), VAR_READWRITE|VAR_NOGLOB);
    setcopy(STRcwd, dp, VAR_READWRITE|VAR_NOGLOB);
    tsetenv(STRPWD, dp);
}
