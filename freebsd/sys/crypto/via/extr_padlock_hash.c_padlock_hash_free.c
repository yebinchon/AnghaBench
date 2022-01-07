
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct padlock_session {int * ses_octx; TYPE_1__* ses_axf; int * ses_ictx; } ;
struct TYPE_2__ {int ctxsize; } ;


 int M_PADLOCK ;
 int bzero (int *,int ) ;
 int free (int *,int ) ;
 int padlock_free_ctx (TYPE_1__*,int *) ;

void
padlock_hash_free(struct padlock_session *ses)
{

 if (ses->ses_ictx != ((void*)0)) {
  padlock_free_ctx(ses->ses_axf, ses->ses_ictx);
  bzero(ses->ses_ictx, ses->ses_axf->ctxsize);
  free(ses->ses_ictx, M_PADLOCK);
  ses->ses_ictx = ((void*)0);
 }
 if (ses->ses_octx != ((void*)0)) {
  padlock_free_ctx(ses->ses_axf, ses->ses_octx);
  bzero(ses->ses_octx, ses->ses_axf->ctxsize);
  free(ses->ses_octx, M_PADLOCK);
  ses->ses_octx = ((void*)0);
 }
}
