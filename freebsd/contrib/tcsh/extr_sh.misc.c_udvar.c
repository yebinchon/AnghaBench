
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ERR_NAME ;
 int ERR_UNDVAR ;
 int setname (int ) ;
 int short2str (int *) ;
 int stderror (int) ;

void
udvar(Char *name)
{
    setname(short2str(name));
    stderror(ERR_NAME | ERR_UNDVAR);
}
