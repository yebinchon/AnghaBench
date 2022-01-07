
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * command ;
typedef int Char ;


 int CGETS (int,int,char*) ;
 int USE (int **) ;
 int hashdebug ;
 int hashlength ;
 int hashwidth ;
 scalar_t__ havhash ;
 int hits ;
 int misses ;
 int xprintf (int ,int,...) ;

void
hashstat(Char **v, struct command *c)
{
    USE(c);
    USE(v);
}
