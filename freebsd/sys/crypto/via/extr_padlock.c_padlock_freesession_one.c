
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padlock_softc {int dummy; } ;
struct padlock_session {int ses_fpu_ctx; } ;


 int fpu_kern_free_ctx (int ) ;
 int padlock_hash_free (struct padlock_session*) ;

__attribute__((used)) static void
padlock_freesession_one(struct padlock_softc *sc, struct padlock_session *ses)
{

 padlock_hash_free(ses);
 fpu_kern_free_ctx(ses->ses_fpu_ctx);
}
