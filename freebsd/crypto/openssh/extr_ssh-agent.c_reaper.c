
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_9__ {int nentries; int idlist; } ;
struct TYPE_8__ {scalar_t__ death; int comment; } ;
typedef TYPE_1__ Identity ;


 scalar_t__ MINIMUM (scalar_t__,scalar_t__) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int debug (char*,int ) ;
 int free_identity (TYPE_1__*) ;
 TYPE_2__* idtab ;
 scalar_t__ monotime () ;
 int next ;

__attribute__((used)) static time_t
reaper(void)
{
 time_t deadline = 0, now = monotime();
 Identity *id, *nxt;

 for (id = TAILQ_FIRST(&idtab->idlist); id; id = nxt) {
  nxt = TAILQ_NEXT(id, next);
  if (id->death == 0)
   continue;
  if (now >= id->death) {
   debug("expiring key '%s'", id->comment);
   TAILQ_REMOVE(&idtab->idlist, id, next);
   free_identity(id);
   idtab->nentries--;
  } else
   deadline = (deadline == 0) ? id->death :
       MINIMUM(deadline, id->death);
 }
 if (deadline == 0 || deadline <= now)
  return 0;
 else
  return (deadline - now);
}
