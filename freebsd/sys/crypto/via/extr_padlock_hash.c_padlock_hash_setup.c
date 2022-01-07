
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct padlock_session {int * ses_octx; int * ses_ictx; TYPE_1__* ses_axf; int ses_mlen; } ;
struct cryptoini {int cri_alg; int cri_klen; int * cri_key; int cri_mlen; } ;
struct TYPE_10__ {int ctxsize; } ;
 int ENOMEM ;
 int M_NOWAIT ;
 int M_PADLOCK ;
 int M_ZERO ;
 int VIA_HAS_SHA ;
 TYPE_1__ auth_hash_hmac_md5 ;
 TYPE_1__ auth_hash_hmac_ripemd_160 ;
 TYPE_1__ auth_hash_hmac_sha1 ;
 TYPE_1__ auth_hash_hmac_sha2_256 ;
 TYPE_1__ auth_hash_hmac_sha2_384 ;
 TYPE_1__ auth_hash_hmac_sha2_512 ;
 TYPE_1__ auth_hash_null ;
 void* malloc (int ,int ,int) ;
 int padlock_hash_key_setup (struct padlock_session*,int *,int ) ;
 TYPE_1__ padlock_hmac_sha1 ;
 TYPE_1__ padlock_hmac_sha256 ;
 int via_feature_xcrypt ;

int
padlock_hash_setup(struct padlock_session *ses, struct cryptoini *macini)
{

 ses->ses_mlen = macini->cri_mlen;


 switch (macini->cri_alg) {
 case 133:
  ses->ses_axf = &auth_hash_null;
  break;
 case 134:
  ses->ses_axf = &auth_hash_hmac_md5;
  break;
 case 131:
  if ((via_feature_xcrypt & VIA_HAS_SHA) != 0)
   ses->ses_axf = &padlock_hmac_sha1;
  else
   ses->ses_axf = &auth_hash_hmac_sha1;
  break;
 case 132:
  ses->ses_axf = &auth_hash_hmac_ripemd_160;
  break;
 case 130:
  if ((via_feature_xcrypt & VIA_HAS_SHA) != 0)
   ses->ses_axf = &padlock_hmac_sha256;
  else
   ses->ses_axf = &auth_hash_hmac_sha2_256;
  break;
 case 129:
  ses->ses_axf = &auth_hash_hmac_sha2_384;
  break;
 case 128:
  ses->ses_axf = &auth_hash_hmac_sha2_512;
  break;
 }


 ses->ses_ictx = malloc(ses->ses_axf->ctxsize, M_PADLOCK,
     M_ZERO | M_NOWAIT);
 ses->ses_octx = malloc(ses->ses_axf->ctxsize, M_PADLOCK,
     M_ZERO | M_NOWAIT);
 if (ses->ses_ictx == ((void*)0) || ses->ses_octx == ((void*)0))
  return (ENOMEM);


 if (macini->cri_key != ((void*)0)) {
  padlock_hash_key_setup(ses, macini->cri_key,
      macini->cri_klen);
 }
 return (0);
}
