
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int STR1 ;
 int STRautorehash ;
 int STRstatus ;
 int USE (struct command*) ;
 int VAR_READWRITE ;
 scalar_t__ adrof (int ) ;
 int dohash (int *,int *) ;
 int find_cmd (int *,int) ;
 int setcopy (int ,int ,int ) ;

void
dowhere(Char **v, struct command *c)
{
    int found = 1;
    USE(c);

    if (adrof(STRautorehash))
 dohash(((void*)0), ((void*)0));
    for (v++; *v; v++)
 found &= find_cmd(*v, 1);

    if (!found)
 setcopy(STRstatus, STR1, VAR_READWRITE);
}
