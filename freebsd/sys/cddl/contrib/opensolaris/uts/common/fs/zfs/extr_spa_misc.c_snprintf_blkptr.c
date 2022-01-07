
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int type ;
typedef size_t dmu_object_byteswap_t ;
typedef int blkptr_t ;
struct TYPE_8__ {int ot_name; } ;
struct TYPE_7__ {char* ob_name; } ;
struct TYPE_6__ {char* ci_name; } ;
struct TYPE_5__ {char* ci_name; } ;


 size_t BP_GET_CHECKSUM (int const*) ;
 size_t BP_GET_COMPRESS (int const*) ;
 size_t BP_GET_TYPE (int const*) ;
 int BP_IS_EMBEDDED (int const*) ;
 size_t DMU_OT_BYTESWAP (size_t) ;
 scalar_t__ DMU_OT_IS_METADATA (size_t) ;
 int DMU_OT_NEWTYPE ;
 int SNPRINTF_BLKPTR (int (*) (char*,int,char*,char*,char*),char,char*,size_t,int const*,char*,char*,char*) ;
 TYPE_4__* dmu_ot ;
 TYPE_3__* dmu_ot_byteswap ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlcpy (char*,int ,int) ;
 TYPE_2__* zio_checksum_table ;
 TYPE_1__* zio_compress_table ;

void
snprintf_blkptr(char *buf, size_t buflen, const blkptr_t *bp)
{
 char type[256];
 char *checksum = ((void*)0);
 char *compress = ((void*)0);

 if (bp != ((void*)0)) {
  if (BP_GET_TYPE(bp) & DMU_OT_NEWTYPE) {
   dmu_object_byteswap_t bswap =
       DMU_OT_BYTESWAP(BP_GET_TYPE(bp));
   (void) snprintf(type, sizeof (type), "bswap %s %s",
       DMU_OT_IS_METADATA(BP_GET_TYPE(bp)) ?
       "metadata" : "data",
       dmu_ot_byteswap[bswap].ob_name);
  } else {
   (void) strlcpy(type, dmu_ot[BP_GET_TYPE(bp)].ot_name,
       sizeof (type));
  }
  if (!BP_IS_EMBEDDED(bp)) {
   checksum =
       zio_checksum_table[BP_GET_CHECKSUM(bp)].ci_name;
  }
  compress = zio_compress_table[BP_GET_COMPRESS(bp)].ci_name;
 }

 SNPRINTF_BLKPTR(snprintf, ' ', buf, buflen, bp, type, checksum,
     compress);
}
