
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int num; int size; } ;
typedef TYPE_1__ COVER_epoch_info_t ;


 int MAX (int,int) ;
 int MIN (int const,int) ;
 int assert (int) ;

COVER_epoch_info_t COVER_computeEpochs(U32 maxDictSize,
                                       U32 nbDmers, U32 k, U32 passes)
{
  const U32 minEpochSize = k * 10;
  COVER_epoch_info_t epochs;
  epochs.num = MAX(1, maxDictSize / k / passes);
  epochs.size = nbDmers / epochs.num;
  if (epochs.size >= minEpochSize) {
      assert(epochs.size * epochs.num <= nbDmers);
      return epochs;
  }
  epochs.size = MIN(minEpochSize, nbDmers);
  epochs.num = nbDmers / epochs.size;
  assert(epochs.size * epochs.num <= nbDmers);
  return epochs;
}
