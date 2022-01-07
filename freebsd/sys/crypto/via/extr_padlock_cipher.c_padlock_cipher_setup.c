
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union padlock_cw {int cw_key_size; int cw_round_count; int cw_key_generation; scalar_t__ cw_intermediate; int cw_algorithm_type; } ;
struct padlock_session {int ses_iv; union padlock_cw ses_cw; } ;
struct cryptoini {int cri_klen; int * cri_key; } ;


 int EINVAL ;
 int PADLOCK_ALGORITHM_TYPE_AES ;
 int PADLOCK_KEY_GENERATION_HW ;
 int PADLOCK_KEY_GENERATION_SW ;
 int PADLOCK_KEY_SIZE_128 ;
 int PADLOCK_KEY_SIZE_192 ;
 int PADLOCK_KEY_SIZE_256 ;
 int PADLOCK_ROUND_COUNT_AES128 ;
 int PADLOCK_ROUND_COUNT_AES192 ;
 int PADLOCK_ROUND_COUNT_AES256 ;
 int arc4rand (int ,int,int ) ;
 int bzero (union padlock_cw*,int) ;
 int padlock_cipher_key_setup (struct padlock_session*,int *,int) ;

int
padlock_cipher_setup(struct padlock_session *ses, struct cryptoini *encini)
{
 union padlock_cw *cw;

 if (encini->cri_klen != 128 && encini->cri_klen != 192 &&
     encini->cri_klen != 256) {
  return (EINVAL);
 }

 cw = &ses->ses_cw;
 bzero(cw, sizeof(*cw));
 cw->cw_algorithm_type = PADLOCK_ALGORITHM_TYPE_AES;
 cw->cw_key_generation = PADLOCK_KEY_GENERATION_SW;
 cw->cw_intermediate = 0;
 switch (encini->cri_klen) {
 case 128:
  cw->cw_round_count = PADLOCK_ROUND_COUNT_AES128;
  cw->cw_key_size = PADLOCK_KEY_SIZE_128;




  break;
 case 192:
  cw->cw_round_count = PADLOCK_ROUND_COUNT_AES192;
  cw->cw_key_size = PADLOCK_KEY_SIZE_192;
  break;
 case 256:
  cw->cw_round_count = PADLOCK_ROUND_COUNT_AES256;
  cw->cw_key_size = PADLOCK_KEY_SIZE_256;
  break;
 }
 if (encini->cri_key != ((void*)0)) {
  padlock_cipher_key_setup(ses, encini->cri_key,
      encini->cri_klen);
 }

 arc4rand(ses->ses_iv, sizeof(ses->ses_iv), 0);
 return (0);
}
