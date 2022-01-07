
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpc_token {struct tpc_token* params; } ;
struct ctl_softc {int tpc_lock; int tpc_tokens; int tpc_timeout; } ;


 int M_CTL ;
 struct tpc_token* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct tpc_token*,int ) ;
 int callout_drain (int *) ;
 int free (struct tpc_token*,int ) ;
 int links ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
ctl_tpc_shutdown(struct ctl_softc *softc)
{
 struct tpc_token *token;

 callout_drain(&softc->tpc_timeout);


 mtx_lock(&softc->tpc_lock);
 while ((token = TAILQ_FIRST(&softc->tpc_tokens)) != ((void*)0)) {
  TAILQ_REMOVE(&softc->tpc_tokens, token, links);
  free(token->params, M_CTL);
  free(token, M_CTL);
 }
 mtx_unlock(&softc->tpc_lock);
 mtx_destroy(&softc->tpc_lock);
}
