
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * command ;
typedef int Char ;


 int USE (int **) ;
 int goodbye (int *,int *) ;
 int islogin () ;

void
dologout(Char **v, struct command *c)
{
    USE(c);
    USE(v);
    islogin();
    goodbye(((void*)0), ((void*)0));
}
