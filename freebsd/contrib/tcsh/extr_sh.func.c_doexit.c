
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command {int dummy; } ;
typedef int Char ;


 int ERR_EXPRESSION ;
 int ERR_NAME ;
 int SHIN ;
 int STRstatus ;
 int USE (struct command*) ;
 int VAR_READWRITE ;
 int btoeof () ;
 scalar_t__ chkstop ;
 scalar_t__ evalvec ;
 int expr (int ***) ;
 scalar_t__ intact ;
 scalar_t__ intty ;
 int panystop (int ) ;
 int putn (int ) ;
 int setv (int ,int ,int ) ;
 int stderror (int) ;
 int xclose (int ) ;

void
doexit(Char **v, struct command *c)
{
    USE(c);

    if (chkstop == 0 && (intty || intact) && evalvec == 0)
 panystop(0);



    v++;
    if (*v) {
 setv(STRstatus, putn(expr(&v)), VAR_READWRITE);
 if (*v)
     stderror(ERR_NAME | ERR_EXPRESSION);
    }
    btoeof();




 xclose(SHIN);
}
