
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * command ;
typedef int Char ;


 int GetTermCaps () ;
 int GotTermCaps ;
 int TellTC () ;
 int USE (int **) ;

void
dotelltc(Char **v, struct command *c)
{
    USE(v);
    USE(c);
    if (!GotTermCaps)
 GetTermCaps();
    TellTC();
}
