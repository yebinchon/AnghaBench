
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nentries; int idlist; } ;
typedef int SocketEntry ;
typedef int Identity ;


 int * TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int free_identity (int *) ;
 TYPE_1__* idtab ;
 int next ;
 int send_status (int *,int) ;

__attribute__((used)) static void
process_remove_all_identities(SocketEntry *e)
{
 Identity *id;


 for (id = TAILQ_FIRST(&idtab->idlist); id;
     id = TAILQ_FIRST(&idtab->idlist)) {
  TAILQ_REMOVE(&idtab->idlist, id, next);
  free_identity(id);
 }


 idtab->nentries = 0;


 send_status(e, 1);
}
