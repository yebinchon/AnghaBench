
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** Strings; } ;
typedef TYPE_1__ TERMTYPE ;


 char* ABSENT_STRING ;
 int FALSE ;
 unsigned int NUM_STRINGS (TYPE_1__*) ;
 int TRUE ;

__attribute__((used)) static bool
kill_string(TERMTYPE *tterm, char *cap)
{
    unsigned n;
    for (n = 0; n < NUM_STRINGS(tterm); ++n) {
 if (cap == tterm->Strings[n]) {
     tterm->Strings[n] = ABSENT_STRING;
     return TRUE;
 }
    }
    return FALSE;
}
