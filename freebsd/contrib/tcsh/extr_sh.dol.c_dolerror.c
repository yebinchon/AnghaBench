
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int ERR_NAME ;
 int ERR_RANGE ;
 int setname (int ) ;
 int short2str (int *) ;
 int stderror (int) ;

__attribute__((used)) static void
dolerror(Char *s)
{
    setname(short2str(s));
    stderror(ERR_NAME | ERR_RANGE);
}
