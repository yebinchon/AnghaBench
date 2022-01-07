
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int speed; scalar_t__ string; } ;
typedef TYPE_1__ SPEEDS ;


 int CaselessCmp (char*,scalar_t__) ;
 int FALSE ;
 int TRUE ;
 int err (char*,char*) ;
 TYPE_1__* speeds ;

__attribute__((used)) static int
tbaudrate(char *rate)
{
    const SPEEDS *sp;
    int found = FALSE;


    if (*rate == 'B')
 ++rate;

    for (sp = speeds; sp->string; ++sp) {
 if (!CaselessCmp(rate, sp->string)) {
     found = TRUE;
     break;
 }
    }
    if (!found)
 err("unknown baud rate %s", rate);
    return (sp->speed);
}
