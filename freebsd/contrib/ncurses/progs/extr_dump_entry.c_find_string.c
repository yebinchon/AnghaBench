
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char** Strings; } ;
typedef TYPE_1__ TERMTYPE ;
typedef size_t PredIdx ;


 char* ABSENT_STRING ;
 size_t NUM_STRINGS (TYPE_1__*) ;
 int STRING ;
 scalar_t__ VALID_STRING (char*) ;
 int strcmp (char*,int ) ;
 int * strnames ;
 scalar_t__ version_filter (int ,size_t) ;

__attribute__((used)) static char *
find_string(TERMTYPE *tterm, char *name)
{
    PredIdx n;
    for (n = 0; n < NUM_STRINGS(tterm); ++n) {
 if (version_filter(STRING, n)
     && !strcmp(name, strnames[n])) {
     char *cap = tterm->Strings[n];
     if (VALID_STRING(cap)) {
  return cap;
     }
     break;
 }
    }
    return ABSENT_STRING;
}
