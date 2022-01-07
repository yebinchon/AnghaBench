
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fiqhandler {int fh_size; int fh_flags; int fh_func; int * fh_regs; } ;


 int EBUSY ;
 int EFBIG ;
 int FH_CANPUSH ;
 int PSR_F ;
 struct fiqhandler* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct fiqhandler*,int ) ;
 int disable_interrupts (int ) ;
 int fh_list ;
 int fiq_getregs (int *) ;
 int fiq_installhandler (int ,int) ;
 int fiq_setregs (int *) ;
 int fiqhandler_stack ;
 int restore_interrupts (int ) ;

int
fiq_claim(struct fiqhandler *fh)
{
 struct fiqhandler *ofh;
 u_int oldirqstate;
 int error = 0;

 if (fh->fh_size > 0x100)
  return (EFBIG);

 oldirqstate = disable_interrupts(PSR_F);

 if ((ofh = TAILQ_FIRST(&fiqhandler_stack)) != ((void*)0)) {
  if ((ofh->fh_flags & FH_CANPUSH) == 0) {
   error = EBUSY;
   goto out;
  }


  if (ofh->fh_regs != ((void*)0))
   fiq_getregs(ofh->fh_regs);
 }


 if (fh->fh_regs != ((void*)0))
  fiq_setregs(fh->fh_regs);

 TAILQ_INSERT_HEAD(&fiqhandler_stack, fh, fh_list);


 fiq_installhandler(fh->fh_func, fh->fh_size);


 oldirqstate &= ~PSR_F;

 out:
 restore_interrupts(oldirqstate);
 return (error);
}
