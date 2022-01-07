
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ttyent {int ty_status; scalar_t__ ty_name; scalar_t__ ty_getty; } ;
struct TYPE_7__ {struct TYPE_7__* se_prev; struct TYPE_7__* se_next; int se_device; int se_flags; } ;
typedef TYPE_1__ session_t ;


 int SE_IFCONSOLE ;
 int SE_IFEXISTS ;
 int SE_PRESENT ;
 int TTY_IFCONSOLE ;
 int TTY_IFEXISTS ;
 int TTY_ON ;
 int _PATH_DEV ;
 scalar_t__ asprintf (int *,char*,int ,scalar_t__) ;
 scalar_t__ calloc (int,int) ;
 int err (int,char*) ;
 int free_session (TYPE_1__*) ;
 TYPE_1__* sessions ;
 scalar_t__ setupargv (TYPE_1__*,struct ttyent*) ;

__attribute__((used)) static session_t *
new_session(session_t *sprev, struct ttyent *typ)
{
 session_t *sp;

 if ((typ->ty_status & TTY_ON) == 0 ||
     typ->ty_name == 0 ||
     typ->ty_getty == 0)
  return 0;

 sp = (session_t *) calloc(1, sizeof (session_t));

 sp->se_flags |= SE_PRESENT;

 if ((typ->ty_status & TTY_IFEXISTS) != 0)
  sp->se_flags |= SE_IFEXISTS;

 if ((typ->ty_status & TTY_IFCONSOLE) != 0)
  sp->se_flags |= SE_IFCONSOLE;

 if (asprintf(&sp->se_device, "%s%s", _PATH_DEV, typ->ty_name) < 0)
  err(1, "asprintf");

 if (setupargv(sp, typ) == 0) {
  free_session(sp);
  return (0);
 }

 sp->se_next = 0;
 if (sprev == ((void*)0)) {
  sessions = sp;
  sp->se_prev = 0;
 } else {
  sprev->se_next = sp;
  sp->se_prev = sprev;
 }

 return sp;
}
