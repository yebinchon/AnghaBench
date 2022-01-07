
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct padlock_softc {int dummy; } ;
struct padlock_session {int ses_fpu_ctx; } ;
struct cryptoini {int cri_alg; struct cryptoini* cri_next; } ;
typedef int device_t ;
typedef int crypto_session_t ;
 int EINVAL ;
 int FPU_KERN_KTHR ;
 int FPU_KERN_NORMAL ;
 struct padlock_session* crypto_get_driver_session (int ) ;
 struct thread* curthread ;
 struct padlock_softc* device_get_softc (int ) ;
 int fpu_kern_alloc_ctx (int) ;
 int fpu_kern_enter (struct thread*,int ,int) ;
 int fpu_kern_leave (struct thread*,int ) ;
 int padlock_cipher_setup (struct padlock_session*,struct cryptoini*) ;
 int padlock_freesession_one (struct padlock_softc*,struct padlock_session*) ;
 int padlock_hash_setup (struct padlock_session*,struct cryptoini*) ;

__attribute__((used)) static int
padlock_newsession(device_t dev, crypto_session_t cses, struct cryptoini *cri)
{
 struct padlock_softc *sc = device_get_softc(dev);
 struct padlock_session *ses = ((void*)0);
 struct cryptoini *encini, *macini;
 struct thread *td;
 int error;

 if (cri == ((void*)0))
  return (EINVAL);

 encini = macini = ((void*)0);
 for (; cri != ((void*)0); cri = cri->cri_next) {
  switch (cri->cri_alg) {
  case 133:
  case 134:
  case 131:
  case 132:
  case 130:
  case 129:
  case 128:
   if (macini != ((void*)0))
    return (EINVAL);
   macini = cri;
   break;
  case 135:
   if (encini != ((void*)0))
    return (EINVAL);
   encini = cri;
   break;
  default:
   return (EINVAL);
  }
 }






 if (encini == ((void*)0))
  return (EINVAL);

 ses = crypto_get_driver_session(cses);
 ses->ses_fpu_ctx = fpu_kern_alloc_ctx(FPU_KERN_NORMAL);

 error = padlock_cipher_setup(ses, encini);
 if (error != 0) {
  padlock_freesession_one(sc, ses);
  return (error);
 }

 if (macini != ((void*)0)) {
  td = curthread;
  fpu_kern_enter(td, ses->ses_fpu_ctx, FPU_KERN_NORMAL |
      FPU_KERN_KTHR);
  error = padlock_hash_setup(ses, macini);
  fpu_kern_leave(td, ses->ses_fpu_ctx);
  if (error != 0) {
   padlock_freesession_one(sc, ses);
   return (error);
  }
 }

 return (0);
}
