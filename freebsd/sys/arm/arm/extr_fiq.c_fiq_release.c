
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fiqhandler {int fh_size; int fh_func; int * fh_regs; } ;


 int PSR_F ;
 struct fiqhandler* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct fiqhandler*,int ) ;
 int disable_interrupts (int ) ;
 int fh_list ;
 int fiq_getregs (int *) ;
 int fiq_installhandler (int ,int ) ;
 int fiq_nullhandler_code ;
 int fiq_nullhandler_size ;
 int fiq_setregs (int *) ;
 int fiqhandler_stack ;
 int restore_interrupts (int ) ;

void
fiq_release(struct fiqhandler *fh)
{
 u_int oldirqstate;
 struct fiqhandler *ofh;

 oldirqstate = disable_interrupts(PSR_F);






 if (fh == TAILQ_FIRST(&fiqhandler_stack)) {
  if (fh->fh_regs != ((void*)0))
   fiq_getregs(fh->fh_regs);
  TAILQ_REMOVE(&fiqhandler_stack, fh, fh_list);
  if ((ofh = TAILQ_FIRST(&fiqhandler_stack)) != ((void*)0)) {
   if (ofh->fh_regs != ((void*)0))
    fiq_setregs(ofh->fh_regs);
   fiq_installhandler(ofh->fh_func, ofh->fh_size);
  }
 } else
  TAILQ_REMOVE(&fiqhandler_stack, fh, fh_list);

 if (TAILQ_FIRST(&fiqhandler_stack) == ((void*)0)) {

  fiq_installhandler(fiq_nullhandler_code, fiq_nullhandler_size);


  oldirqstate |= PSR_F;
 }

 restore_interrupts(oldirqstate);
}
