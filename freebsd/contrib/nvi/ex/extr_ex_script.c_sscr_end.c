
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* script; } ;
struct TYPE_8__ {int sh_master; int sh_slave; struct TYPE_8__* sh_prompt; scalar_t__ sh_pid; } ;
typedef TYPE_1__ SCRIPT ;
typedef TYPE_2__ SCR ;


 int F_CLR (TYPE_2__*,int ) ;
 int SC_SCRIPT ;
 int close (int) ;
 int free (TYPE_1__*) ;
 int proc_wait (TYPE_2__*,long,char*,int ,int ) ;
 int sscr_check (TYPE_2__*) ;

int
sscr_end(SCR *sp)
{
 SCRIPT *sc;

 if ((sc = sp->script) == ((void*)0))
  return (0);


 F_CLR(sp, SC_SCRIPT);
 sscr_check(sp);


 if (sc->sh_master != -1)
     (void)close(sc->sh_master);
 if (sc->sh_slave != -1)
     (void)close(sc->sh_slave);


 (void)proc_wait(sp, (long)sc->sh_pid, "script-shell", 0, 0);


 free(sc->sh_prompt);
 free(sc);
 sp->script = ((void*)0);

 return (0);
}
