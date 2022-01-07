
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* t_data; } ;
typedef TYPE_1__ token_t ;
struct TYPE_9__ {scalar_t__ len; scalar_t__ used; int token_q; } ;
typedef TYPE_2__ au_record_t ;


 int LIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int au_rec_q ;
 int audit_free_q ;
 int free (TYPE_1__*) ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tokens ;

__attribute__((used)) static void
au_teardown(au_record_t *rec)
{
 token_t *tok;


 while ((tok = TAILQ_FIRST(&rec->token_q)) != ((void*)0)) {
  TAILQ_REMOVE(&rec->token_q, tok, tokens);
  free(tok->t_data);
  free(tok);
 }

 rec->used = 0;
 rec->len = 0;






 LIST_INSERT_HEAD(&audit_free_q, rec, au_rec_q);




}
