
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;


 size_t CMD_INCR ;
 scalar_t__* STRQNULL ;
 int Strcpy (size_t,scalar_t__*) ;
 size_t Strlen (scalar_t__*) ;
 size_t cmdlen ;
 size_t cmdmax ;
 size_t cmdp ;
 int morecommand (size_t) ;

__attribute__((used)) static void
pads(Char *cp)
{
    size_t i, len;





    if (cp[0] == STRQNULL[0])
 cp++;

    i = Strlen(cp);

    len = cmdlen + i + CMD_INCR;
    if (len >= cmdmax)
 morecommand(len);
    (void) Strcpy(cmdp, cp);
    cmdp += i;
    cmdlen += i;
}
