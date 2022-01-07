
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int textq; } ;
struct TYPE_6__ {TYPE_2__ dcb_store; int cutq; } ;
typedef TYPE_1__ GS ;
typedef TYPE_2__ CB ;


 TYPE_2__* SLIST_FIRST (int ) ;
 int SLIST_REMOVE_HEAD (int ,int ) ;
 int TAILQ_EMPTY (int ) ;
 int free (TYPE_2__*) ;
 int q ;
 int text_lfree (int ) ;

void
cut_close(GS *gp)
{
 CB *cbp;


 while ((cbp = SLIST_FIRST(gp->cutq)) != ((void*)0)) {
  if (!TAILQ_EMPTY(cbp->textq))
   text_lfree(cbp->textq);
  SLIST_REMOVE_HEAD(gp->cutq, q);
  free(cbp);
 }


 cbp = &gp->dcb_store;
 if (!TAILQ_EMPTY(cbp->textq))
  text_lfree(cbp->textq);
}
