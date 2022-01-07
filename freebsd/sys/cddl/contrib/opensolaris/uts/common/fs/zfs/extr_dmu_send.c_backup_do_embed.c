
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dsa_featureflags; } ;
typedef TYPE_1__ dmu_sendarg_t ;
typedef int boolean_t ;
typedef int blkptr_t ;


 int BPE_GET_ETYPE (int const*) ;

 scalar_t__ BP_GET_COMPRESS (int const*) ;
 int BP_IS_EMBEDDED (int const*) ;
 int B_FALSE ;
 int B_TRUE ;
 int DMU_BACKUP_FEATURE_EMBED_DATA ;
 int DMU_BACKUP_FEATURE_LZ4 ;
 scalar_t__ ZIO_COMPRESS_LEGACY_FUNCTIONS ;

__attribute__((used)) static boolean_t
backup_do_embed(dmu_sendarg_t *dsp, const blkptr_t *bp)
{
 if (!BP_IS_EMBEDDED(bp))
  return (B_FALSE);




 if ((BP_GET_COMPRESS(bp) >= ZIO_COMPRESS_LEGACY_FUNCTIONS &&
     !(dsp->dsa_featureflags & DMU_BACKUP_FEATURE_LZ4)))
  return (B_FALSE);




 switch (BPE_GET_ETYPE(bp)) {
 case 128:
  if (dsp->dsa_featureflags & DMU_BACKUP_FEATURE_EMBED_DATA)
   return (B_TRUE);
  break;
 default:
  return (B_FALSE);
 }
 return (B_FALSE);
}
