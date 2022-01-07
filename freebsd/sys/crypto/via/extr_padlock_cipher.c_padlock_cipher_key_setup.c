
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union padlock_cw {scalar_t__ cw_key_generation; } ;
struct padlock_session {void** ses_dkey; void** ses_ekey; union padlock_cw ses_cw; } ;
typedef int caddr_t ;


 scalar_t__ PADLOCK_KEY_GENERATION_SW ;
 int RIJNDAEL_MAXNR ;
 int bcopy (int ,void**,int) ;
 void* ntohl (void*) ;
 int rijndaelKeySetupDec (void**,int ,int) ;
 int rijndaelKeySetupEnc (void**,int ,int) ;

__attribute__((used)) static void
padlock_cipher_key_setup(struct padlock_session *ses, caddr_t key, int klen)
{
 union padlock_cw *cw;
 int i;

 cw = &ses->ses_cw;
 if (cw->cw_key_generation == PADLOCK_KEY_GENERATION_SW) {

  rijndaelKeySetupEnc(ses->ses_ekey, key, klen);
  rijndaelKeySetupDec(ses->ses_dkey, key, klen);
  for (i = 0; i < 4 * (RIJNDAEL_MAXNR + 1); i++) {
   ses->ses_ekey[i] = ntohl(ses->ses_ekey[i]);
   ses->ses_dkey[i] = ntohl(ses->ses_dkey[i]);
  }
 } else {
  bcopy(key, ses->ses_ekey, klen);
  bcopy(key, ses->ses_dkey, klen);
 }
}
