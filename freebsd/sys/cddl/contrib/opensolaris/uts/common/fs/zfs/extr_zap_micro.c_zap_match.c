
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zn_matchtype; int zn_key_orig; int zn_key_norm; int zn_normflags; int zn_zap; } ;
typedef TYPE_1__ zap_name_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int MT_NORMALIZE ;
 int ZAP_FLAG_UINT64_KEY ;
 int ZAP_MAXNAMELEN ;
 scalar_t__ strcmp (int ,char const*) ;
 int zap_getflags (int ) ;
 scalar_t__ zap_normalize (int ,char const*,char*,int ) ;

boolean_t
zap_match(zap_name_t *zn, const char *matchname)
{
 ASSERT(!(zap_getflags(zn->zn_zap) & ZAP_FLAG_UINT64_KEY));

 if (zn->zn_matchtype & MT_NORMALIZE) {
  char norm[ZAP_MAXNAMELEN];

  if (zap_normalize(zn->zn_zap, matchname, norm,
      zn->zn_normflags) != 0)
   return (B_FALSE);

  return (strcmp(zn->zn_key_norm, norm) == 0);
 } else {
  return (strcmp(zn->zn_key_orig, matchname) == 0);
 }
}
