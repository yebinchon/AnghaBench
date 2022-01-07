
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ttyent {char* ty_name; int ty_status; scalar_t__ ty_getty; } ;
typedef int state_func_t ;
struct TYPE_5__ {int se_flags; int se_process; struct TYPE_5__* se_next; scalar_t__ se_started; scalar_t__ se_nspace; scalar_t__ se_type; scalar_t__ se_window; scalar_t__ se_getty; scalar_t__ se_device; } ;
typedef TYPE_1__ session_t ;
typedef int _PATH_DEV ;


 int SE_PRESENT ;
 int SE_SHUTDOWN ;
 int SIGHUP ;
 int TTY_ON ;
 int endttyent () ;
 int free (char*) ;
 struct ttyent* getttyent () ;
 int kill (int ,int ) ;
 int multi_user ;
 int new_session (TYPE_1__*,struct ttyent*) ;
 TYPE_1__* sessions ;
 scalar_t__ setupargv (TYPE_1__*,struct ttyent*) ;
 scalar_t__ strcmp (char*,scalar_t__) ;
 char* strdup (scalar_t__) ;
 int warning (char*,scalar_t__) ;

__attribute__((used)) static state_func_t
clean_ttys(void)
{
 session_t *sp, *sprev;
 struct ttyent *typ;
 int devlen;
 char *old_getty, *old_window, *old_type;






 for (sp = sessions; sp != ((void*)0); sp = sp->se_next)
  sp->se_flags &= ~SE_PRESENT;

 devlen = sizeof(_PATH_DEV) - 1;
 while ((typ = getttyent()) != ((void*)0)) {
  for (sprev = 0, sp = sessions; sp; sprev = sp, sp = sp->se_next)
   if (strcmp(typ->ty_name, sp->se_device + devlen) == 0)
    break;

  if (sp) {

   sp->se_flags |= SE_PRESENT;
   if ((typ->ty_status & TTY_ON) == 0 ||
       typ->ty_getty == 0) {
    sp->se_flags |= SE_SHUTDOWN;
    kill(sp->se_process, SIGHUP);
    continue;
   }
   sp->se_flags &= ~SE_SHUTDOWN;
   old_getty = sp->se_getty ? strdup(sp->se_getty) : 0;
   old_window = sp->se_window ? strdup(sp->se_window) : 0;
   old_type = sp->se_type ? strdup(sp->se_type) : 0;
   if (setupargv(sp, typ) == 0) {
    warning("can't parse getty for port %s",
     sp->se_device);
    sp->se_flags |= SE_SHUTDOWN;
    kill(sp->se_process, SIGHUP);
   }
   else if ( !old_getty
     || (!old_type && sp->se_type)
     || (old_type && !sp->se_type)
     || (!old_window && sp->se_window)
     || (old_window && !sp->se_window)
     || (strcmp(old_getty, sp->se_getty) != 0)
     || (old_window && strcmp(old_window, sp->se_window) != 0)
     || (old_type && strcmp(old_type, sp->se_type) != 0)
    ) {

    sp->se_nspace = 0;
    sp->se_started = 0;
    kill(sp->se_process, SIGHUP);
   }
   if (old_getty)
    free(old_getty);
   if (old_window)
    free(old_window);
   if (old_type)
    free(old_type);
   continue;
  }

  new_session(sprev, typ);
 }

 endttyent();





 for (sp = sessions; sp != ((void*)0); sp = sp->se_next) {
  if ((sp->se_flags & SE_PRESENT) == 0) {
   sp->se_flags |= SE_SHUTDOWN;
   kill(sp->se_process, SIGHUP);
  }
 }

 return (state_func_t) multi_user;
}
