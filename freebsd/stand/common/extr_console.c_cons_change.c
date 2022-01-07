
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_flags; char* c_name; int (* c_init ) (int ) ;} ;


 int CMD_ERROR ;
 int CMD_OK ;
 int C_ACTIVEIN ;
 int C_ACTIVEOUT ;
 int C_PRESENTIN ;
 int C_PRESENTOUT ;
 int cons_find (char*) ;
 TYPE_1__** consoles ;
 int free (char*) ;
 int printf (char*,char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static int
cons_change(const char *string)
{
    int cons, active;
    char *curpos, *dup, *next;


    for (cons = 0; consoles[cons] != ((void*)0); cons++) {
 consoles[cons]->c_flags &= ~(C_ACTIVEIN | C_ACTIVEOUT);
    }


    dup = next = strdup(string);
    active = 0;
    while (next != ((void*)0)) {
 curpos = strsep(&next, " ,");
 if (*curpos == '\0')
  continue;
 cons = cons_find(curpos);
 if (cons >= 0) {
     consoles[cons]->c_flags |= C_ACTIVEIN | C_ACTIVEOUT;
     consoles[cons]->c_init(0);
     if ((consoles[cons]->c_flags & (C_PRESENTIN | C_PRESENTOUT)) ==
  (C_PRESENTIN | C_PRESENTOUT)) {
  active++;
  continue;
     }

     if (active != 0) {

  printf("console %s failed to initialize\n", consoles[cons]->c_name);
     }
 }
    }

    free(dup);

    if (active == 0) {

 for (cons = 0; consoles[cons] != ((void*)0); cons++) {
     consoles[cons]->c_flags |= C_ACTIVEIN | C_ACTIVEOUT;
     consoles[cons]->c_init(0);
     if ((consoles[cons]->c_flags &
  (C_PRESENTIN | C_PRESENTOUT)) ==
  (C_PRESENTIN | C_PRESENTOUT))
  active++;
 }

 if (active == 0)
     return (CMD_ERROR);
    }

    return (CMD_OK);
}
