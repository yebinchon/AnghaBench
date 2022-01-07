
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c_flags; char* c_name; char* c_desc; int (* c_init ) (int ) ;int (* c_probe ) (TYPE_1__*) ;} ;


 int C_ACTIVEIN ;
 int C_ACTIVEOUT ;
 int C_PRESENTIN ;
 int C_PRESENTOUT ;
 int EV_VOLATILE ;
 int cons_change (char*) ;
 int cons_set ;
 TYPE_1__** consoles ;
 int env_nounset ;
 int env_setenv (char*,int ,char*,int ,int ) ;
 int free (char*) ;
 char* getenv (char*) ;
 int printf (char*,...) ;
 char* strdup (char*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (int ) ;
 int twiddle_set ;
 int unsetenv (char*) ;

void
cons_probe(void)
{
    int cons;
    int active;
    char *prefconsole;


    env_setenv("twiddle_divisor", EV_VOLATILE, "1", twiddle_set, env_nounset);


    for (cons = 0; consoles[cons] != ((void*)0); cons++) {
 consoles[cons]->c_flags = 0;
  consoles[cons]->c_probe(consoles[cons]);
    }

    active = -1;
    for (cons = 0; consoles[cons] != ((void*)0) && active == -1; cons++) {
 consoles[cons]->c_flags = 0;
  consoles[cons]->c_probe(consoles[cons]);
 if (consoles[cons]->c_flags == (C_PRESENTIN | C_PRESENTOUT))
     active = cons;
    }

    if (active == -1)
 active = 0;


    prefconsole = getenv("console");
    if (prefconsole != ((void*)0))
 prefconsole = strdup(prefconsole);
    if (prefconsole != ((void*)0)) {
 unsetenv("console");
 cons_change(prefconsole);
    } else {
 consoles[active]->c_flags |= C_ACTIVEIN | C_ACTIVEOUT;
 consoles[active]->c_init(0);
 prefconsole = strdup(consoles[active]->c_name);
    }

    printf("Consoles: ");
    for (cons = 0; consoles[cons] != ((void*)0); cons++)
 if (consoles[cons]->c_flags & (C_ACTIVEIN | C_ACTIVEOUT))
     printf("%s  ", consoles[cons]->c_desc);
    printf("\n");

    if (prefconsole != ((void*)0)) {
 env_setenv("console", EV_VOLATILE, prefconsole, cons_set,
     env_nounset);
 free(prefconsole);
    }
}
