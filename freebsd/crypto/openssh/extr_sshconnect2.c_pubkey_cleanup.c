
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int agent_fd; int keys; } ;
struct TYPE_7__ {struct TYPE_7__* filename; int key; } ;
typedef TYPE_1__ Identity ;
typedef TYPE_2__ Authctxt ;


 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int free (TYPE_1__*) ;
 int next ;
 int ssh_close_authentication_socket (int) ;
 int sshkey_free (int ) ;

__attribute__((used)) static void
pubkey_cleanup(Authctxt *authctxt)
{
 Identity *id;

 if (authctxt->agent_fd != -1)
  ssh_close_authentication_socket(authctxt->agent_fd);
 for (id = TAILQ_FIRST(&authctxt->keys); id;
     id = TAILQ_FIRST(&authctxt->keys)) {
  TAILQ_REMOVE(&authctxt->keys, id, next);
  sshkey_free(id->key);
  free(id->filename);
  free(id);
 }
}
